part of '../collection_bloc/collection_bloc.dart';

class _DataProvider {
  static final _DataProvider instance = _DataProvider._();
  _DataProvider._() {
    _readInitialData();
  }

  CollectionModel? collection;

  bool readInitialData = false;

  Future<void> _readInitialData() async {
    readInitialData = true;
    API api = API();
    var collectionData = await api.fetchCollection();

    collection = CollectionModel.fromJson(collectionData);
  }

  Future<CollectionModel> fetchCollection() async {
    if (!readInitialData || collection == null) {
      await _readInitialData();
    }
    return collection!;
  }
}
