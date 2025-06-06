// Add this to your _fetch_collect_state.dart file

part of '../collection_bloc.dart';

abstract class FetchCollectionState extends Equatable {
  const FetchCollectionState();

  Map<String, dynamic> toMap();

  static FetchCollectionState fromMap(Map<String, dynamic> map) {
    final stateType = map['stateType'] as String;

    switch (stateType) {
      case 'FetchCollectionSuccessState':
        return FetchCollectionSuccessState.fromMap(map);
      case 'FetchCollectionLoadingState':
        return FetchCollectionLoadingState.fromMap(map);
      case 'FetchCollectionFailureState':
        return FetchCollectionFailureState.fromMap(map);
      case 'FetchCollectionDefaultState':
      default:
        return FetchCollectionDefaultState.fromMap(map);
    }
  }
}

class FetchCollectionDefaultState extends FetchCollectionState {
  const FetchCollectionDefaultState();

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stateType': 'FetchCollectionDefaultState'};
  }

  static FetchCollectionDefaultState fromMap(Map<String, dynamic> map) {
    return const FetchCollectionDefaultState();
  }
}

class FetchCollectionLoadingState extends FetchCollectionState {
  const FetchCollectionLoadingState();

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stateType': 'FetchCollectionLoadingState'};
  }

  static FetchCollectionLoadingState fromMap(Map<String, dynamic> map) {
    return const FetchCollectionLoadingState();
  }
}

class FetchCollectionSuccessState extends FetchCollectionState {
  final CollectionModel collection;

  const FetchCollectionSuccessState({required this.collection});

  @override
  List<Object> get props => [collection];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stateType': 'FetchCollectionSuccessState',
      'collection': collection.toMap(),
    };
  }

  static FetchCollectionSuccessState fromMap(Map<String, dynamic> map) {
    return FetchCollectionSuccessState(
      collection: CollectionModel.fromJson(
        map['collection'] as Map<String, dynamic>,
      ),
    );
  }
}

class FetchCollectionFailureState extends FetchCollectionState {
  final String message;

  const FetchCollectionFailureState({required this.message});

  @override
  List<Object> get props => [message];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stateType': 'FetchCollectionFailureState',
      'message': message,
    };
  }

  static FetchCollectionFailureState fromMap(Map<String, dynamic> map) {
    return FetchCollectionFailureState(message: map['message'] as String);
  }
}
