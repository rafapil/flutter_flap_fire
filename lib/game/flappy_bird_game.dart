import 'package:flame/game.dart';
import 'package:flutter_flap_fire/components/background.dart';
import 'package:flutter_flap_fire/components/bird.dart';
import 'package:flutter_flap_fire/components/ground.dart';
import 'package:flutter_flap_fire/components/pipe_group.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);
  }
}
