import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  StreamController<bool>? _connectivityController;
  bool? _lastConnectivityState;

  Future<bool> checkInternet() async {
    final connectivity = await Connectivity().checkConnectivity();
    return connectivity != ConnectivityResult.none;
  }

  Stream<bool> get onConnectivityChanged {
    _connectivityController ??= StreamController<bool>.broadcast();

    _connectivity.onConnectivityChanged.listen((
      ConnectivityResult result,
    ) async {
      final hasInternet = result != ConnectivityResult.none;

      // Only emits if connectivity state changes
      if (_lastConnectivityState != hasInternet) {
        _lastConnectivityState = hasInternet;
        _connectivityController?.add(hasInternet);
      }
    });

    return _connectivityController!.stream;
  }
}
