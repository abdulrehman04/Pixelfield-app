import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pixelfield_test_project/service/connectivity_service.dart';

class ConnectivityToastWrapper extends StatefulWidget {
  final Widget child;

  const ConnectivityToastWrapper({required this.child, super.key});

  @override
  State<ConnectivityToastWrapper> createState() =>
      _ConnectivityToastWrapperState();
}

class _ConnectivityToastWrapperState extends State<ConnectivityToastWrapper> {
  late final StreamSubscription<bool> _subscription;
  bool _wasOffline = false;

  @override
  void initState() {
    super.initState();

    // Check once on app open
    Future.microtask(() async {
      final hasInternet = await ConnectivityService().checkInternet();
      _wasOffline = !hasInternet;

      if (!hasInternet && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No internet - fetching local data'),
            backgroundColor: Colors.orange,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Internet connection found - fetching data from API'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    });

    _subscription = ConnectivityService().onConnectivityChanged.listen((
      hasInternet,
    ) {
      if (hasInternet && _wasOffline) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Internet connection restored'),
              backgroundColor: Colors.lightGreen,
            ),
          );
        }
      } else if (!_wasOffline && !hasInternet) {
        // Went offline
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Internet connection lost'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
      _wasOffline = !hasInternet;
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
