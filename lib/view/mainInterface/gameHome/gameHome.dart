import 'dart:ui';

import 'package:flame/flame.dart';
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
    bgPaint.color = Color(0xff112233);
    canvas.drawRect(bgRect, bgPaint);

    // paint background
    // this.backGround.render(canvas);
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
  Rect bgRect;

  BackGround(this.game) {
    bgSprite = Sprite('images/mountainBackground/parallax-mountain-bg.png');
    bgRect = Rect.fromLTWH(
      0,
      game.screenSize.height - (game.tileSize * 23),
      game.tileSize * 9,
      game.tileSize * 23,
    );
  }

  void render(Canvas c) {
    // bgSprite.renderRect(c, bgRect);
  }

  void update(double t) {}
}
