import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/domain/entity/game/question.dart';

class HouseQuestion extends Question<String> {
  HouseQuestion({
    required this.character,
    required super.possibleVariants,
    required super.attempts,
    required super.guessed,
  });

  final Character character;
}
