import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:incode_group_test_task/src/domain/entity/wand.dart';

class WandConverter extends TypeConverter<Wand?, String?> {
  const WandConverter();

  @override
  Wand? fromSql(String? fromDb) {
    if (fromDb == null) return null;

    final wandMap = jsonDecode(fromDb);

    return Wand(
      wood: wandMap['wood'],
      core: wandMap['core'],
      length: wandMap['lenght'],
    );
  }

  @override
  String? toSql(Wand? value) {
    if (value == null) return null;

    final wandMap = <String, dynamic>{
      'wood': value.wood,
      'core': value.core,
      'length': value.length,
    };

    return jsonEncode(wandMap);
  }
}
