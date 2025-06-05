part of '../collection_bloc.dart';

class FetchCollectionState extends Equatable {
  static bool match(CollectionStates a, CollectionStates b) =>
      a.fetchCollectionState != b.fetchCollectionState;
  final String? message;

  @override
  List<Object?> get props => [message];

  const FetchCollectionState({this.message});

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
  final List data;
  const FetchCollectionSuccessState({required this.data});
}

class FetchCollectionFailureState extends FetchCollectionState {
  const FetchCollectionFailureState({required super.message});
}
