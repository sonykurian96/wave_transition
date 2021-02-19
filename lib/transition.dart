import 'package:flutter/material.dart';

class Transition extends StatelessWidget {
  Transition({
    @required this.targetPage,
    @required this.fromCenter,
    this.duration
  });

  final Widget targetPage;

  // center of transition
  final FractionalOffset fromCenter;

  // duration of transition
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    bool check() {
      if (duration != null) return true;
      return false;
    }

    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: check() ? duration : Duration(milliseconds: 1500),
      child: targetPage,
      builder: (context, value, child) {
        return ShaderMask(
          blendMode: BlendMode.modulate,
          shaderCallback: (rect) {
            return RadialGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.transparent,
                Colors.transparent
              ],
              stops: [0.0, 0.55, 0.6, 1.0],
              center: fromCenter,
              radius: value * 5,
            ).createShader(rect);
          },
          child: child,
        );
      },
    );
  }
}