import 'package:pixelfield_test_project/api/api.dart';
import 'package:pixelfield_test_project/models/collection_model.dart';
import 'package:pixelfield_test_project/service/connectivity_service.dart';

/// This should be a part-of directive in real-cases
/// but is made public to allow early data load
class DataProvider {
  static final DataProvider instance = DataProvider._();
  DataProvider._();

  CollectionModel? collection;
  bool readInitialData = false;

  Future<CollectionModel> _fetchFromAPI() async {
    final api = API();
    final json = await api.fetchCollection();
    return CollectionModel.fromJson(json);
  }

  /// Called at app startup to pre-load data
  Future<void> preload() async {
    if (readInitialData) return;
    final isOnline = await ConnectivityService().checkInternet();

    if (isOnline) {
      collection = await _fetchFromAPI();
    }
    readInitialData = true;
  }

  Future<CollectionModel> fetchCollection() async {
    final isOnline = await ConnectivityService().checkInternet();
    if (isOnline) {
      collection = await _fetchFromAPI();
      readInitialData = true;
      return collection!;
    } else {
      if (collection != null) {
        return collection!;
      } else {
        throw Exception("No internet and no local data available");
      }
    }
  }
}
