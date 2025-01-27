import 'package:dart_mappable/dart_mappable.dart';

part 'network_wand.mapper.dart';

@MappableClass()
class NetworkWand with NetworkWandMappable {
  NetworkWand({
    required this.wood,
    required this.core,
    this.length,
  });

  final String wood;
  final String core;
  final double? length;

  factory NetworkWand.fromJson(Map<String, dynamic> json) =>
      NetworkWandMapper.fromJson(json);
}
