import 'package:incode_group_test_task/src/data/data_source/app_database.dart';
import 'package:incode_group_test_task/src/data/mapper/character_to_database_character.dart';
import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/domain/entity/game/house_question.dart';
import 'package:incode_group_test_task/src/domain/entity/game/question.dart';
import 'package:incode_group_test_task/src/domain/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GameRepository)
class GameRepositoryImpl implements GameRepository {
  const GameRepositoryImpl(
    this._appDatabase,
    this._characterToDatabaseCharacter,
  );

  final AppDatabase _appDatabase;

  final CharacterToDatabaseCharacter _characterToDatabaseCharacter;

  List<HouseQuestion> _generateHouseQuestions(List<Character> characters) {
    // TODO: implement getHouseQuestion
    throw UnimplementedError();
  }

  @override
  Future<bool> checkAnswer<T>(
          {required Question<T> question, required T answer}) async =>
      switch (question) {
        HouseQuestion question when answer is String =>
          _checkHouseQuestion(question, answer),
        _ => throw (Exception('Unknown type of question or wrong answer type'))
      };

  bool _checkHouseQuestion(HouseQuestion houseQuestion, String answer) =>
      houseQuestion.character.house == answer;

  @override
  Future<HouseQuestion> getHouseQuestion() {
    // TODO: implement getHouseQuestion
    throw UnimplementedError();
  }

  @override
  Future<void> updateCharacters(List<Character> characters) =>
      _appDatabase.batch(
        (batch) => batch
          ..insertAllOnConflictUpdate(
            _appDatabase.databaseCharacters,
            characters.map(_characterToDatabaseCharacter.call).toList(),
          ),
      );
}
