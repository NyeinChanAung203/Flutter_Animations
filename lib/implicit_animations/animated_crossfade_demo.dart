import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  var crossFade = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Cross Fade Demo'),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
          child: AnimatedCrossFade(
            crossFadeState: crossFade,
            firstChild: Image.asset(
              'assets/run_tom.png',
              width: 100,
            ),
            secondChild: Image.asset(
              'assets/run_jerry.png',
              width: 100,
            ),
            duration: const Duration(milliseconds: 400),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            crossFade = CrossFadeState.showFirst == crossFade
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst;
          });
        },
        child: const Icon(Icons.start),
      ),
    );
  }
}
