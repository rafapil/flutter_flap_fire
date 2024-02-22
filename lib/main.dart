import 'dart:js';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flap_fire/game/flappy_bird_game.dart';
import 'package:flutter_flap_fire/screens/game_over_screen.dart';
import 'package:flutter_flap_fire/screens/main_menu_screen.dart';

final game = FlappyBirdGame();
void main() {
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
        'gameOver': (context, _) => GameOverScreen(game: game),
      },
    ),
  );
}
