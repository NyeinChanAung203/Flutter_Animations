import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final dynamic page;

  PageSlideTransition({required this.page})
      : super(
            transitionsBuilder: (context, animation, seconday, child) {
              /// play begin , dont play end;
              var slide = Tween<Offset>(
                      begin: const Offset(1, 0), end: const Offset(0, 0))
                  .animate(animation);
              return SlideTransition(
                position: slide,
                child: child,
              );
            },
            pageBuilder: (context, animation, secondary) => page);
}
