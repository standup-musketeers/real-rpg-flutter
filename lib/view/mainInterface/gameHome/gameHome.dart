import 'dart:ui';

import 'package:flame/gestures.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';

class GameHome extends BaseGame with DoubleTapDetector, TapDetector {
  Size screenSize;
  double tileSize;

  // Game interface components
  BackGround backGround;

  GameHome(Size screenSize) {
    this.screenSize = screenSize;
    tileSize = screenSize.width / 9;
    screenSize = size;
  }

  void initialize() async {
    this.backGround = BackGround(this);
    // resize(await Flame.util.initialDimensions());
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    // bgPaint.color = Color(0xff112233);
    canvas.drawRect(bgRect, bgPaint);
    // paint background
    this.backGround.render(canvas);
  }

  void update(double t) {}

  void resize(Size size) {
    tileSize = screenSize.width / 9;
    screenSize = size;
  }
}

class BackGround {
  final GameHome game;
  Sprite bgSprite;
  Sprite bgMountainFar;
  Sprite bgForegroundTrees;
  Sprite bgMountains;
  Sprite bgMountainsFar;
  Rect bgRect;
  Rect bgTreeRect;
  Rect bgMountainReg;

  BackGround(this.game) {
    bgSprite = Sprite('mountainBackground/parallax-mountain-bg.png');
    bgMountains = Sprite('mountainBackground/parallax-mountain-mountains.png');
    bgForegroundTrees =
        Sprite('mountainBackground/parallax-mountain-trees.png');
    bgRect = Rect.fromLTWH(
      -game.tileSize * 3,
      game.screenSize.height - (game.tileSize * 17.5),
      game.tileSize * 19,
      game.tileSize * 13,
    );
    bgMountainReg = Rect.fromLTWH(
      -game.tileSize * 1.9,
      game.screenSize.height - (game.tileSize * 17),
      game.tileSize * 25,
      game.tileSize * 14,
    );
  }

  void render(Canvas c) {
    bgSprite.renderRect(c, bgRect);
    bgMountains.renderRect(c, bgMountainReg);
  }

  void update(double t) {}
}
