import 'package:flutter/material.dart';

class PageSizeTransition extends PageRouteBuilder {
  final dynamic page;

  PageSizeTransition({required this.page})
      : super(transitionsBuilder: (context, animation, secondAnimation, child) {
          return Align(
            // align is important cuz size is start 0 to 1,
            alignment: Alignment.center,
            child: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
          );
        }, pageBuilder: (context, animation, secondary) {
          return page;
        });
}
