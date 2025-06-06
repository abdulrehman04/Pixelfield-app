import 'package:equatable/equatable.dart';

class CollectionEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchCollectionEvent extends CollectionEvents {
  FetchCollectionEvent();
}

class SyncCollectionEvent extends CollectionEvents {
  SyncCollectionEvent();
}
