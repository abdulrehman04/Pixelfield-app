import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixelfield_test_project/api/api.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/event.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/state.dart';
import 'package:pixelfield_test_project/models/collection_model.dart';

part './states/_fetch_collect_state.dart';
part './collection_repo_interface.dart';
part './repository.dart';
part './data_provider.dart';

class CollectionBloc extends HydratedBloc<CollectionEvents, CollectionStates> {
  CollectionBloc({required ICollectionRepoInterface repo})
    : _repo = repo,
      super(CollectionStateDefault()) {
    on<FetchCollectionEvent>(_onFetchCollection);
  }

  final ICollectionRepoInterface _repo;

  factory CollectionBloc.withDefaultRepo() {
    return CollectionBloc(repo: _CollectionRepo());
  }

  @override
  CollectionStates? fromJson(Map<String, dynamic> json) {
    return CollectionStates.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CollectionStates state) {
    return state.toMap();
  }

  Future<void> _onFetchCollection(
    FetchCollectionEvent event,
    Emitter<CollectionStates> emit,
  ) async {
    emit(state.copyWith(fetchCollectionState: FetchCollectionLoadingState()));
    try {
      final collection = await _repo.fetchCollection();
      emit(
        state.copyWith(
          fetchCollectionState: FetchCollectionSuccessState(
            collection: collection,
          ),
        ),
      );
    } catch (e) {
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
