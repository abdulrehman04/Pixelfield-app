import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/event.dart';
import 'package:pixelfield_test_project/blocs/collection_bloc/state.dart';

part './states/_fetch_collect_state.dart';

class CollectionBloc extends HydratedBloc<CollectionEvents, CollectionStates> {
  CollectionBloc() : super(CollectionStateDefault()) {
    on<FetchCollectionEvent>(_onFetchCollection);
  }

  @override
  CollectionStates? fromJson(Map<String, dynamic> json) {
    return CollectionStates.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CollectionStates state) {
    state.toMap();
  }

  Future<void> _onFetchCollection(
    FetchCollectionEvent event,
    Emitter<CollectionStates> emit,
  ) async {
    emit(state.copyWith(fetchCollectionState: FetchCollectionLoadingState()));
    try {
      final collection = await _repo.fetchCollection();
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
