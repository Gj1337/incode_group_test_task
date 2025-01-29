import 'package:dart_mappable/dart_mappable.dart';
import 'package:incode_group_test_task/src/data/entity/network/network_wand.dart';

part 'network_character.mapper.dart';

@MappableClass()
class NetworkCharacter with NetworkCharacterMappable {
  NetworkCharacter({
    required this.id,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  final String id;
  final String name;
  @MappableField(key: 'alternate_names')
  final List<String> alternateNames;
  final String species;
  final String gender;
  final String house;
  final String? dateOfBirth;
  final int? yearOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final NetworkWand wand;
  final String patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String actor;
  @MappableField(key: 'alternate_actors')
  final List<String> alternateActors;
  final bool alive;
  final String image;

  factory NetworkCharacter.fromJson(Map<String, dynamic> json) =>
      NetworkCharacterMapper.fromJson(json);
}
