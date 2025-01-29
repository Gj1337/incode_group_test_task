import 'package:incode_group_test_task/src/data/entity/network/network_character.dart';
import 'package:incode_group_test_task/src/data/mapper/network_wand_to_wand_mapper.dart';
import 'package:incode_group_test_task/src/domain/entity/character.dart';
import 'package:incode_group_test_task/src/data/utils/string_extension.dart';
import 'package:injectable/injectable.dart';

@injectable
final class NetworkCharacterToCharacterMapper {
  const NetworkCharacterToCharacterMapper(this.networkWandToWandMapper);

  final NetworkWandToWandMapper networkWandToWandMapper;

  Character call(NetworkCharacter networkCharacter) => Character(
        id: networkCharacter.id,
        name: networkCharacter.name,
        species: networkCharacter.species,
        gender: networkCharacter.gender.nullIfEmpty(),
        house: networkCharacter.house.nullIfEmpty(),
        wizard: networkCharacter.wizard,
        ancestry: networkCharacter.ancestry.nullIfEmpty(),
        eyeColour: networkCharacter.eyeColour.nullIfEmpty(),
        hairColour: networkCharacter.hairColour.nullIfEmpty(),
        patronus: networkCharacter.patronus.nullIfEmpty(),
        hogwartsStudent: networkCharacter.hogwartsStudent,
        hogwartsStaff: networkCharacter.hogwartsStaff,
        actor: networkCharacter.actor.nullIfEmpty(),
        alternateActors: networkCharacter.alternateActors,
        alive: networkCharacter.alive,
        wand: networkWandToWandMapper(networkCharacter.wand),
      );
}
