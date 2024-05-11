import 'package:flutter/material.dart';

class AnimatedDefaultTextDemo extends StatefulWidget {
  const AnimatedDefaultTextDemo({super.key});

  @override
  State<AnimatedDefaultTextDemo> createState() =>
      _AnimatedDefaultTextDemoState();
}

class _AnimatedDefaultTextDemoState extends State<AnimatedDefaultTextDemo> {
  double size = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Default Text Demo'),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            fontSize: size,
            color: size < 30 ? Colors.green : Colors.amber,
          ),
          duration: const Duration(milliseconds: 400),
          child: const Text('Animated Text Style'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            size = size < 30 ? 30 : 20;
          });
        },
        child: const Icon(Icons.start),
      ),
    );
  }
}
