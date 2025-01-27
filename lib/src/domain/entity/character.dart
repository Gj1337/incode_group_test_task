import 'package:incode_group_test_task/src/domain/entity/wand.dart';

class Character {
  Character({
    required this.id,
    required this.name,
    this.alternateNames = const [],
    required this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    required this.wizard,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.wand,
    this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    this.actor,
    required this.alternateActors,
    required this.alive,
    this.image,
  });

  final String id;
  final String name;
  final List<String> alternateNames;
  final String species;
  final String? gender;
  final String? house;
  final String? dateOfBirth;
  final int? yearOfBirth;
  final bool wizard;
  final String? ancestry;
  final String? eyeColour;
  final String? hairColour;
  final Wand? wand;
  final String? patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String? actor;
  final List<String> alternateActors;
  final bool alive;
  final String? image;
}
