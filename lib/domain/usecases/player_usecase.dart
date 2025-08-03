import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/utils/utils.dart';

class PlayerUsecase {
  PlayerEntity createPlayer(String name) {
    return PlayerEntity(
      id: StringHelper.generateUUID(),
      name: name,
      matchesPlayed: 0,
      wins: 0,
      losses: 0,
    );
  }
}
