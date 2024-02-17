import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flap_fire/game/flappy_bird_game.dart';

final game = FlappyBirdGame();
void main() {
  runApp(
    GameWidget(game: game),
  );
}
