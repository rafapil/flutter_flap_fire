// import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/timer.dart';
import 'package:flutter_flap_fire/components/background.dart';
import 'package:flutter_flap_fire/components/bird.dart';
import 'package:flutter_flap_fire/components/configuration.dart';
import 'package:flutter_flap_fire/components/ground.dart';
import 'package:flutter_flap_fire/components/pipe_group.dart';

class FlappyBirdGame extends FlameGame with TapDetector {
  late Bird bird;
  Timer interval = Timer(Config.pipeInterval, repeat: true);
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);

    interval.onTick = () => add(PipeGroup());
  }

  @override
  void onTap() {
    super.onTap();
    bird.fly();
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
