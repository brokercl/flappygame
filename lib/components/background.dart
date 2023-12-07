import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappybird/game/assets.dart';
import 'package:flappybird/game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final backgroundDay = await Flame.images.load(Assets.background);
    size = gameRef.size;
    sprite = Sprite(backgroundDay);
  }
}
