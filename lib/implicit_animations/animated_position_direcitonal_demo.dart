import 'package:flutter/material.dart';

class AnimatedPositonedDirectionalDemo extends StatefulWidget {
  const AnimatedPositonedDirectionalDemo({super.key});

  @override
  State<AnimatedPositonedDirectionalDemo> createState() =>
      _AnimatedPositonedDirectionalDemoState();
}

class _AnimatedPositonedDirectionalDemoState
    extends State<AnimatedPositonedDirectionalDemo> {
  double start = 0;
  double top = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width - 90;
    double height = MediaQuery.sizeOf(context).height - 220;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned Directional Demo'),
      ),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            start: start,
            top: top,
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/run_tom.png',
              ))),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  start -= 30;
                  if (start < 0) {
                    start = 0;
                  } else if (start > width) {
                    start = width;
                  }
                });
              },
              icon: const Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () {
                setState(() {
                  start += 30;
                  debugPrint('$start , $width');
                  if (start < 0) {
                    start = 0;
                  } else if (start > width) {
                    start = width;
                  }
                });
              },
              icon: const Icon(Icons.arrow_forward)),
          IconButton(
              onPressed: () {
                setState(() {
                  top -= 30;
                  if (top < 0) {
                    top = 0;
                  } else if (top > height) {
                    top = height;
                  }
                });
              },
              icon: const Icon(Icons.arrow_upward)),
          IconButton(
              onPressed: () {
                setState(() {
                  top += 30;
                  if (top < 0) {
                    top = 0;
                  } else if (top > height) {
                    top = height;
                  }
                });
              },
              icon: const Icon(Icons.arrow_downward)),
        ],
      ),
    );
  }
}
