import 'package:flutter/material.dart';

class PageFadeSizeTransition extends PageRouteBuilder {
  final dynamic page;

  PageFadeSizeTransition({required this.page})
      : super(transitionsBuilder: (context, animation, secondAnimation, child) {
          return Align(
            alignment: Alignment.center,
            child: FadeTransition(
              opacity: animation,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            ),
          );
        }, pageBuilder: (context, animation, secondary) {
          return page;
        });
}
