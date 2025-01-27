import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:incode_group_test_task/src/di/dependency_injection.config.dart';

@InjectableInit(
  preferRelativeImports: false,
  asExtension: false,
)
void initializeDependencyContainer(GetIt getIt) => init(getIt);
