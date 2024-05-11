import 'package:flutter/material.dart';
import 'package:flutter_animations/implicit_animations/animated_align_demo.dart';
import 'package:flutter_animations/implicit_animations/animated_container_demo.dart';

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
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const TweenBuilderExample(),
              //       ));
              //     },
              //     child: const Text('Tween Builder Demo')),
            ],
          ),
        ),
      ),
    );
  }
}
