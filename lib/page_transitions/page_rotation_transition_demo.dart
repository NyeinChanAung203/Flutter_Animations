import 'package:flutter/material.dart';

class PageRouteTransition extends PageRouteBuilder {
  final dynamic page;

  PageRouteTransition({required this.page})
      : super(
            transitionsBuilder: (context, animation, seconday, child) {
              return Align(
                alignment: Alignment.center,
                child: RotationTransition(
                  turns: animation,
                  child: child,
                ),
              );
            },
            pageBuilder: (context, animation, secondary) => page);
}
