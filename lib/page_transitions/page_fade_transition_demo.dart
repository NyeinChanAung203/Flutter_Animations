import 'package:flutter/material.dart';

class PageFadeTransition extends PageRouteBuilder {
  final dynamic page;

  PageFadeTransition({required this.page})
      : super(pageBuilder: (context, animation, secondary) {
          return Align(
            alignment: Alignment.center,
            child: FadeTransition(
              opacity: animation,
              child: page,
            ),
          );
        });
}
