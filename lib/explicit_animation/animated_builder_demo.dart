import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderExpDemo extends StatefulWidget {
  const AnimatedBuilderExpDemo({super.key});

  @override
  State<AnimatedBuilderExpDemo> createState() => _AnimatedBuilderExpDemoState();
}

class _AnimatedBuilderExpDemoState extends State<AnimatedBuilderExpDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    /// play with rever true or false
    /// adding ..repeat will start animation automatically
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: false);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rotation Transition Demo'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => Transform.rotate(

              /// play with angle
              angle: _animation.value * pi,
              child: const Text(
                'Hello World',
                style: TextStyle(fontSize: 32),
              )),
        ),
      ),
    );
  }
}
