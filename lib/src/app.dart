import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:incode_group_test_task/src/di/dependency_injection.dart';
import 'package:incode_group_test_task/src/di/di_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DiProvider(
      getIt: GetIt.instance,
      setupGetIt: (getIt) async => initializeDependencyContainer(getIt),
      child: MaterialApp(),
    );
  }
}
