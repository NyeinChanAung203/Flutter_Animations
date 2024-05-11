import 'package:flutter/material.dart';
import 'package:flutter_animations/builder_example/animated_builder_example.dart';
import 'package:flutter_animations/builder_example/animation_controller_example.dart';
import 'package:flutter_animations/builder_example/tween_builder_example.dart';

class BuilderExample extends StatelessWidget {
  const BuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Animations'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
      ),
    );
  }
}
