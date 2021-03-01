library wave_transition;

/// This package allows you to create amazing wave transitions///

import 'package:flutter/material.dart';
import 'transition.dart';

class WaveTransition<T> extends PageRouteBuilder<T> {
  final Widget child;

  final FractionalOffset center;

  final Duration duration;

  WaveTransition({@required this.child, @required this.center, this.duration,RouteSettings settings})
      : super(
      settings: settings,
          opaque: false,
          pageBuilder: (context, animation, _) {
            return Transition(
              targetPage: child,
              fromCenter: center,
              duration: duration,
            );
          },
        );
}
