part of '../collection_bloc.dart';

class FetchCollectionState extends Equatable {
  static bool match(CollectionStates a, CollectionStates b) =>
      a.fetchCollectionState != b.fetchCollectionState;
  final String? message;
  final CollectionModel? collection;

  @override
  List<Object?> get props => [message, collection];

  const FetchCollectionState({this.message, this.collection});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': message};
  }

  factory FetchCollectionState.fromMap(Map<String, dynamic> map) {
    return FetchCollectionState(message: map['message'] as String);
  }
}

class FetchCollectionDefaultState extends FetchCollectionState {
  const FetchCollectionDefaultState();
}

class FetchCollectionLoadingState extends FetchCollectionState {
  const FetchCollectionLoadingState();
}

class FetchCollectionSuccessState extends FetchCollectionState {
  const FetchCollectionSuccessState({required super.collection});
}

class FetchCollectionFailureState extends FetchCollectionState {
  const FetchCollectionFailureState({required super.message});
}
