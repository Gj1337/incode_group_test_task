import 'package:incode_group_test_task/src/domain/entity/character.dart';

abstract interface class CharacterRepository {
  Future<List<Character>> getCharacters();
}
