import 'package:flutter/material.dart';
import 'package:flutter_animations/builder_example/builder_example.dart';
import 'package:flutter_animations/explicit_animation/explicit_animation.dart';
import 'package:flutter_animations/implicit_animations/implicit_animations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animation Course'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BuilderExample(),
                    ));
                  },
                  child: const Text('Builder Animations')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ImplicitAnimations(),
                    ));
                  },
                  child: const Text('Implicit Animations')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ExplicitAnimations(),
                    ));
                  },
                  child: const Text('Explicit Animations')),
            ],
          ),
        ),
      ),
    );
  }
}
