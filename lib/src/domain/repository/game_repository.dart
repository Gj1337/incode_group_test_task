import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/domain/entity/game/house_question.dart';
import 'package:incode_group_test_task/src/domain/entity/game/question.dart';

abstract interface class GameRepository {
  Future<void> updateCharacters(List<Character> character);

  Future<HouseQuestion> getHouseQuestion();

  Future<bool> checkAnswer<T>({
    required Question<T> question,
    required T answer,
  });
}
