import 'package:flutter/material.dart';

class PageScaleRotateTransition extends PageRouteBuilder {
  final dynamic page;

  PageScaleRotateTransition({required this.page})
      : super(transitionsBuilder: (context, animation, secondAnimation, child) {
          var animation1 = Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(parent: animation, curve: Curves.bounceInOut));
          var animation2 = Tween<double>(begin: 0, end: 2).animate(
              CurvedAnimation(parent: animation, curve: Curves.decelerate));
          return Align(
            alignment: Alignment.center,
            child: ScaleTransition(
              scale: animation1,
              child: RotationTransition(
                turns: animation2,
                child: child,
              ),
            ),
          );
        }, pageBuilder: (context, animation, secondary) {
          return page;
        });
}
