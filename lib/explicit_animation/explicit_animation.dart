import 'package:flutter/material.dart';
import 'package:flutter_animations/explicit_animation/animated_builder_demo.dart';
import 'package:flutter_animations/explicit_animation/defalult_textstyle_transition_demo.dart';
import 'package:flutter_animations/explicit_animation/fade_transition_demo.dart';
import 'package:flutter_animations/explicit_animation/positioned_transition_demo.dart';
import 'package:flutter_animations/explicit_animation/rotation_transition_demo.dart';
import 'package:flutter_animations/explicit_animation/size_transition_demo.dart';

class ExplicitAnimations extends StatelessWidget {
  const ExplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PositionedTransitionDemo(),
                    ));
                  },
                  child: const Text('Position Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SizeTransitionDemo(),
                    ));
                  },
                  child: const Text('Size Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RotationTransitionDemo(),
                    ));
                  },
                  child: const Text('Rotation Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedBuilderExpDemo(),
                    ));
                  },
                  child: const Text('Animated Builder with Transform')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FadeTransitionDemo(),
                    ));
                  },
                  child: const Text('Fade Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const DefaultTextStyleTransitionDemo(),
                    ));
                  },
                  child: const Text('Default Text Style Transition')),
            ],
          ),
        ),
      ),
    );
  }
}
