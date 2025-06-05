part of '../collection_bloc/collection_bloc.dart';

class _CollectionRepo implements ICollectionRepoInterface {
  final _DataProvider _dataProvider = _DataProvider.instance;

  @override
  Future<CollectionModel> fetchCollection() async {
    return await _dataProvider.fetchCollection();
  }
}
