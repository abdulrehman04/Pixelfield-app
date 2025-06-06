part of '../collection_bloc/collection_bloc.dart';

class _CollectionRepo implements ICollectionRepoInterface {
  final DataProvider _dataProvider = DataProvider.instance;

  @override
  Future<CollectionModel> fetchCollection() async {
    return await _dataProvider.fetchCollection();
  }
}
