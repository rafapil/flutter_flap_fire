import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flutter_flap_fire/components/configuration.dart';
import 'package:flutter_flap_fire/game/assets.dart';
import 'package:flutter_flap_fire/game/flappy_bird_game.dart';

class Ground extends ParallaxComponent<FlappyBirdGame> {
  Ground();

  @override
  FutureOr<void> onLoad() async {
    final ground = await Flame.images.load(Assets.ground);
    parallax = Parallax([
      ParallaxLayer(
        ParallaxImage(ground, fill: LayerFill.none),
      )
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    parallax?.baseVelocity.x = Config.gameSpeed;
  }
}
