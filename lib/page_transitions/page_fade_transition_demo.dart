import 'package:flutter/material.dart';

class PageFadeTransition extends PageRouteBuilder {
  final dynamic page;

  PageFadeTransition({required this.page})
      : super(
            transitionsBuilder: (context, animation, seconday, child) {
              return Align(
                alignment: Alignment.center,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            pageBuilder: (context, animation, secondary) => page);
}
