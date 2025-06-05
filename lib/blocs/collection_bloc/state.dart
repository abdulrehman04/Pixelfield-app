import 'package:equatable/equatable.dart';

import 'package:pixelfield_test_project/blocs/collection_bloc/collection_bloc.dart';

class CollectionStates extends Equatable {
  final FetchCollectionState fetchCollectionState;

  const CollectionStates({required this.fetchCollectionState});

  @override
  List<Object> get props => [fetchCollectionState];

  CollectionStates copyWith({FetchCollectionState? fetchCollectionState}) {
    return CollectionStates(
      fetchCollectionState: fetchCollectionState ?? this.fetchCollectionState,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchCollectionState': fetchCollectionState.toMap(),
    };
  }

  factory CollectionStates.fromMap(Map<String, dynamic> map) {
    return CollectionStates(
      fetchCollectionState: FetchCollectionState.fromMap(
        map['fetchCollectionState'] as Map<String, dynamic>,
      ),
    );
  }
}

final class CollectionStateDefault extends CollectionStates {
  const CollectionStateDefault()
    : super(fetchCollectionState: const FetchCollectionDefaultState());
}
