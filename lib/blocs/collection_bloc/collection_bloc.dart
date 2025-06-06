import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/data_provider.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/event.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/state.dart';
import 'package:pixelfield_test_project/models/collection_model.dart';
import 'package:pixelfield_test_project/service/connectivity_service.dart';

part './states/_fetch_collect_state.dart';
part './collection_repo_interface.dart';
part './repository.dart';

class CollectionBloc extends HydratedBloc<CollectionEvents, CollectionStates> {
  CollectionBloc({required ICollectionRepoInterface repo})
    : _repo = repo,
      super(CollectionStateDefault()) {
    on<FetchCollectionEvent>(_onFetchCollection);
    on<SyncCollectionEvent>(_onSyncCollection);

    _initConnectivityListener();
  }

  final ICollectionRepoInterface _repo;

  factory CollectionBloc.withDefaultRepo() {
    return CollectionBloc(repo: _CollectionRepo());
  }

  void _initConnectivityListener() {
    ConnectivityService().onConnectivityChanged.listen((hasInternet) {
      print(hasInternet);
      if (hasInternet) {
        add(SyncCollectionEvent());
      }
    });
  }

  @override
  CollectionStates? fromJson(Map<String, dynamic> json) {
    try {
      final state = CollectionStates.fromMap(json);
      return state;
    } catch (e) {
      return null; // Return null to use initial state
    }
  }

  @override
  Map<String, dynamic>? toJson(CollectionStates state) {
    try {
      if (state.fetchCollectionState is FetchCollectionSuccessState) {
        final json = state.toMap();
        return json;
      } else {
        return null; // Don't save loading/error/default states
      }
    } catch (e) {
      return null;
    }
  }

  Future<void> _onFetchCollection(
    FetchCollectionEvent event,
    Emitter<CollectionStates> emit,
  ) async {
    try {
      final hasInternet = await ConnectivityService().checkInternet();

      if (!hasInternet) {
        if (state.fetchCollectionState is FetchCollectionSuccessState) {
          emit(state);
          return;
        } else {
          try {
            final collection = await _repo.fetchCollection();
            emit(
              state.copyWith(
                fetchCollectionState: FetchCollectionSuccessState(
                  collection: collection,
                ),
              ),
            );
            return;
          } catch (e) {
            // No data available anywhere
            emit(
              state.copyWith(
                fetchCollectionState: FetchCollectionFailureState(
                  message:
                      'No internet connection and no cached data available',
                ),
              ),
            );
            return;
          }
        }
      }

      // Normal flow with internet
      emit(state.copyWith(fetchCollectionState: FetchCollectionLoadingState()));
      final collection = await _repo.fetchCollection();
      emit(
        state.copyWith(
          fetchCollectionState: FetchCollectionSuccessState(
            collection: collection,
          ),
        ),
      );
    } catch (e) {
      if (state.fetchCollectionState is FetchCollectionSuccessState) {
        emit(state);
      } else {
        try {
          final collection = await _repo.fetchCollection();
          emit(
            state.copyWith(
              fetchCollectionState: FetchCollectionSuccessState(
                collection: collection,
              ),
            ),
          );
        } catch (fallbackError) {
          emit(
            state.copyWith(
              fetchCollectionState: FetchCollectionFailureState(
                message: e.toString(),
              ),
            ),
          );
        }
      }
    }
  }

  Future<void> _onSyncCollection(
    SyncCollectionEvent event,
    Emitter<CollectionStates> emit,
  ) async {
    try {
      final hasInternet = await ConnectivityService().checkInternet();

      if (!hasInternet) {
        print('Sync requested but no internet available');
        return;
      }

      print('Syncing data from internet...');

      // Don't show loading if we already have data
      if (state.fetchCollectionState is! FetchCollectionSuccessState) {
        emit(
          state.copyWith(fetchCollectionState: FetchCollectionLoadingState()),
        );
      }

      final collection = await _repo.fetchCollection();
      emit(
        state.copyWith(
          fetchCollectionState: FetchCollectionSuccessState(
            collection: collection,
          ),
        ),
      );

      print('Successfully synced data from internet');
    } catch (e) {
      print('Error syncing data: $e');
      // Don't emit error if we already have cached data
      if (state.fetchCollectionState is! FetchCollectionSuccessState) {
        emit(
          state.copyWith(
            fetchCollectionState: FetchCollectionFailureState(
              message: 'Failed to sync data: ${e.toString()}',
            ),
          ),
        );
      }
    }
  }
}
