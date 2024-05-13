import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;

  PageScaleTransition({required this.page})
      : super(transitionsBuilder: (context, animation, secondAnimation, child) {
          var tween = Tween<double>(begin: 0.5, end: 1).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut));
          return ScaleTransition(
            scale: tween,
            child: child,
          );
        }, pageBuilder: (context, animation, secondary) {
          return page;
        });
}
