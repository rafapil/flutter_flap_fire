import 'package:flame/game.dart';
import 'package:flutter_flap_fire/components/background.dart';
import 'package:flutter_flap_fire/components/ground.dart';

class FlappyBirdGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
    ]);
  }
}
