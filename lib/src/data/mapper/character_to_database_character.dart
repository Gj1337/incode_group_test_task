import 'package:incode_group_test_task/src/data/data_source/app_database.dart';
import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:injectable/injectable.dart';

@injectable
class CharacterToDatabaseCharacter {
  DatabaseCharacter call(Character character) => DatabaseCharacter(
        id: character.id,
        name: character.name,
        species: character.species,
        wizard: character.wizard,
        hogwartsStudent: character.hogwartsStudent,
        hogwartsStaff: character.hogwartsStaff,
        alive: character.alive,
      );
}
