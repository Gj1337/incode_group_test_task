import 'package:drift/drift.dart';

///This conveter shouldn't be used with string that contains [_splitter]
class StringListConverter extends TypeConverter<List<String>?, String?> {
  const StringListConverter();

  final _splitter = ', ';

  @override
  List<String>? fromSql(String? fromDb) => fromDb?.split(_splitter);

  @override
  String? toSql(List<String>? value) => value?.join(_splitter);
}
