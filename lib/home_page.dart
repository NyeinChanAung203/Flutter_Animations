import 'package:flutter/material.dart';
import 'package:flutter_animations/animated_builder_example.dart';
import 'package:flutter_animations/animation_controller_example.dart';
import 'package:flutter_animations/tween_builder_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animation Course'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimationControllerExample(),
                  ));
                },
                child: const Text('Animation Controller Demo')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedBuilderExample(),
                  ));
                },
                child: const Text('Animated Builder Demo')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TweenBuilderExample(),
                  ));
                },
                child: const Text('Tween Builder Demo')),
          ],
        ),
      ),
    );
  }
}
