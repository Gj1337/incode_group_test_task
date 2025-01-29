import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:incode_group_test_task/src/data/entity/database/database_character.dart';
import 'package:injectable/injectable.dart';

part 'app_database.g.dart';

@singleton
@DriftDatabase(tables: [DatabaseCharacters])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  @factoryMethod
  factory AppDatabase.main() => AppDatabase(
        driftDatabase(name: 'database'),
      );
}
