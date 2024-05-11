import 'package:flutter/material.dart';

class AnimatedPhysicalModalDemo extends StatefulWidget {
  const AnimatedPhysicalModalDemo({super.key});

  @override
  State<AnimatedPhysicalModalDemo> createState() =>
      _AnimatedPhysicalModalDemoState();
}

class _AnimatedPhysicalModalDemoState extends State<AnimatedPhysicalModalDemo> {
  double elevation = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Physical Modal Demo'),
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 400),
          shape: BoxShape.circle,
          elevation: elevation,
          color: elevation > 10 ? Colors.blueAccent : Colors.pinkAccent,
          shadowColor: elevation > 10 ? Colors.blueAccent : Colors.pinkAccent,
          child: Image.asset(
            'assets/run_tom.png',
            width: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            elevation = elevation > 10 ? 10 : 20;
          });
        },
        child: const Icon(Icons.start),
      ),
    );
  }
}
