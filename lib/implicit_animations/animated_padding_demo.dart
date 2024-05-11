import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({super.key});

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  double padding = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding Demo'),
      ),
      body: AnimatedPadding(
        duration: const Duration(milliseconds: 400),
        padding: EdgeInsets.only(left: padding),
        child: Container(
          width: 200,
          height: 300,
          color: Colors.blueGrey,
          child: Image.asset(
            'assets/run_tom.png',
            width: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            padding = padding > 20 ? 20 : 40;
          });
        },
        child: const Icon(Icons.start),
      ),
    );
  }
}
