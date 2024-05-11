import 'package:flutter/material.dart';
import 'package:flutter_animations/implicit_animations/animated_align_demo.dart';
import 'package:flutter_animations/implicit_animations/animated_container_demo.dart';
import 'package:flutter_animations/implicit_animations/animated_default_text_demo.dart';
import 'package:flutter_animations/implicit_animations/animated_opacity_demo.dart';
import 'package:flutter_animations/implicit_animations/animated_padding_demo.dart';

class ImplicitAnimations extends StatelessWidget {
  const ImplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedAlignDemo(),
                    ));
                  },
                  child: const Text('Animated Align Demo')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedContainerDemo(),
                    ));
                  },
                  child: const Text('Animated Container Demo')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedDefaultTextDemo(),
                    ));
                  },
                  child: const Text('Animated Default Text Demo')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedOpacityDemo(),
                    ));
                  },
                  child: const Text('Animated Opacity Demo')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedPaddingDemo(),
                    ));
                  },
                  child: const Text('Animated Padding Demo')),
            ],
          ),
        ),
      ),
    );
  }
}
