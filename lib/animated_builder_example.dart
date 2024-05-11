import 'dart:developer';

import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  /// AnimatedBuilder is not rebuilding the whole page
  /// Rebuild Inside AnimatedBuilder Widget
  /// No need to use setState in listener to see update

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // default curve
    // _animation = Tween<double>(begin: 1, end: 10).animate(_controller);

    // custom curve
    _animation = Tween<double>(begin: 1, end: 10)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((status) {
      log(status.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    log('build animated builder example');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Builder Widget'),
        ),
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => Column(
              children: [
                Text('Animation Value => ${_animation.value.round()}'),
                Text('Animation Controller => ${_controller.value}'),
                child!,
              ],
            ),
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.forward();
                    },
                    child: const Text('Forward')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    child: const Text('Reverse')),
                ElevatedButton(
                    onPressed: () {
                      _controller.stop();
                    },
                    child: const Text('Stop')),
                ElevatedButton(
                    onPressed: () {
                      _controller.repeat();
                    },
                    child: const Text('Repeat')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reset();
                    },
                    child: const Text('Reset')),
              ],
            ),
          ),
        ));
  }
}
