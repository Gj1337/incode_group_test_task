import 'package:incode_group_test_task/src/data/data_source/network_data_source.dart';
import 'package:incode_group_test_task/src/data/mapper/network_character_to_character_mapper.dart';
import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/domain/repository/character_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkCharacterRepository implements CharacterRepository {
  NetworkCharacterRepository(
    this.networkDataSource,
    this.networkCharacterToCharacterMapper,
  );

  final NetworkDataSource networkDataSource;

  final NetworkCharacterToCharacterMapper networkCharacterToCharacterMapper;

  @override
  Future<List<Character>> getCharacters() async {
    final networkCharacters = await networkDataSource.getCharacters();

    final characters =
        networkCharacters.map(networkCharacterToCharacterMapper.call).toList();

    return characters;
  }
}
