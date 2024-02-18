import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter_flap_fire/components/configuration.dart';
import 'package:flutter_flap_fire/components/pipe.dart';
import 'package:flutter_flap_fire/game/flappy_bird_game.dart';
import 'package:flutter_flap_fire/game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  PipeGroup();

  @override
  FutureOr<void> onLoad() async {
    position.x = gameRef.size.x;
    addAll([
      Pipe(pipePosition: PipePosition.top, height: 100),
      Pipe(pipePosition: PipePosition.bottom, height: 200),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}
