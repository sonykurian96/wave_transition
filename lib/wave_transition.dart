library wave_transition;

/// This package allows you to create amazing wave transitions///

import 'package:flutter/material.dart';
import 'transition.dart';

class WaveTransition<T> extends PageRouteBuilder<T> {

  // target widget should be passed here
  final Widget child;

  // set alignment 
  final FractionalOffset center;

  // duration of animation
  final Duration? duration;

  // main widget
  WaveTransition(
      {required this.child,
      required this.center,
      this.duration,
      RouteSettings? settings})
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
