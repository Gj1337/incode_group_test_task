import 'package:dio/dio.dart';
import 'package:incode_group_test_task/src/data/entity/network_character.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'network_data_source.g.dart';

@singleton
@RestApi(baseUrl: 'https://hp-api.onrender.com/api')
abstract class NetworkDataSource {
  @factoryMethod
  factory NetworkDataSource(Dio dio) = _NetworkDataSource;

  @GET('/characters')
  Future<List<NetworkCharacter>> getCharacters();
}
