import 'package:incode_group_test_task/src/data/entity/network/network_wand.dart';
import 'package:incode_group_test_task/src/domain/entity/wand.dart';
import 'package:injectable/injectable.dart';

@injectable
final class NetworkWandToWandMapper {
  bool _isNetworkWandEmpty(NetworkWand networkWand) =>
      networkWand.wood.isEmpty &&
      networkWand.core.isEmpty &&
      networkWand.length == null;

  Wand? call(NetworkWand networkWand) => _isNetworkWandEmpty(networkWand)
      ? null
      : Wand(
          wood: networkWand.wood,
          core: networkWand.core,
          length: networkWand.length ?? 0,
        );
}
