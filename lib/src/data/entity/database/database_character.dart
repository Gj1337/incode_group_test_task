import 'package:drift/drift.dart';
import 'package:incode_group_test_task/src/data/entity/database/string_list_converter.dart';
import 'package:incode_group_test_task/src/data/entity/database/wand_converter.dart';

class DatabaseCharacters extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get alternateNames =>
      text().map(const StringListConverter()).nullable()();
  TextColumn get species => text()();
  TextColumn get gender => text().nullable()();
  TextColumn get house => text().nullable()();
  TextColumn get dateOfBirth => text().nullable()();
  IntColumn get yearOfBirth => integer().nullable()();
  BoolColumn get wizard => boolean()();
  TextColumn get ancestry => text().nullable()();
  TextColumn get eyeColour => text().nullable()();
  TextColumn get hairColour => text().nullable()();
  TextColumn get wand => text().map(const WandConverter()).nullable()();
  TextColumn get patronus => text().nullable()();
  BoolColumn get hogwartsStudent => boolean()();
  BoolColumn get hogwartsStaff => boolean()();
  TextColumn get actor => text().nullable()();
  TextColumn get alternateActors =>
      text().map(const StringListConverter()).nullable()();
  BoolColumn get alive => boolean()();
  TextColumn get image => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
