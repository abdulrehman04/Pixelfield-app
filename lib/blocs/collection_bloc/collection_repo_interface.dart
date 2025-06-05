part of './collection_bloc.dart';

abstract class ICollectionRepoInterface {
  /// Fetches the collection data.
  ///
  /// Returns a [Future] that resolves to a list of dynamic objects.
  Future<CollectionModel> fetchCollection();
}
