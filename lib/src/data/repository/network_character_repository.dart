import 'package:incode_group_test_task/src/data/data_source/network_data_source.dart';
import 'package:incode_group_test_task/src/data/mapper/network_character_to_character_mapper.dart';
import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/domain/repository/character_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CharacterRepository)
class NetworkCharacterRepository implements CharacterRepository {
  const NetworkCharacterRepository(
    this._networkDataSource,
    this._networkCharacterToCharacterMapper,
  );

  final NetworkDataSource _networkDataSource;

  final NetworkCharacterToCharacterMapper _networkCharacterToCharacterMapper;

  @override
  Future<List<Character>> getCharacters() async {
    final networkCharacters = await _networkDataSource.getCharacters();

    final characters =
        networkCharacters.map(_networkCharacterToCharacterMapper.call).toList();

    return characters;
  }
}
