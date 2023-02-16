import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/providers/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (_, ref, __) {
          final router = ref.read(ServiceLocator.router);
          return MaterialApp.router(
            title: 'App',
            routeInformationParser: router.informationParser,
            routerDelegate: router.deligate,
          );
        },
      ),
    );
  }
}
