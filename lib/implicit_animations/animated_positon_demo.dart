import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedPositonDemo extends StatefulWidget {
  const AnimatedPositonDemo({super.key});

  @override
  State<AnimatedPositonDemo> createState() => _AnimatedPositonDemoState();
}

class _AnimatedPositonDemoState extends State<AnimatedPositonDemo> {
  double top = Random().nextDouble() * 100;
  // double bottom = Random().nextDouble() * 100;
  double left = Random().nextDouble() * 100;
  // double right = Random().nextDouble() * 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Position Demo'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            left: left,
            top: top,
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/run_tom.png',
              ))),
            ),
          ),
          AnimatedPositioned(
            left: top,
            top: left,

            // top: bottom,
            // right: left,
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/run_jerry.png',
              ))),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changePosition,
        child: const Icon(Icons.start),
      ),
    );
  }

  void changePosition() {
    setState(() {
      top = Random().nextDouble() * 100;
      left = Random().nextDouble() * 100;
    });
  }
}
