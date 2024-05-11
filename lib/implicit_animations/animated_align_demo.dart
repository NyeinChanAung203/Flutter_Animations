import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  var tomPosition = Alignment.topLeft;
  var jerryPosition = Alignment.center;
  bool isCatch = false;
  int move = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.7,
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: tomPosition,
                  duration: const Duration(milliseconds: 400),
                  child: Image.asset(
                    'assets/run_tom.png',
                    width: 100,
                  ),
                ),
                AnimatedAlign(
                  alignment: jerryPosition,
                  duration: const Duration(milliseconds: 400),
                  child: Image.asset(
                    'assets/run_jerry.png',
                    width: 60,
                  ),
                ),
                isCatch
                    ? Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        color: Colors.black12,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You Win',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                    color: Colors.green,
                                  ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    isCatch = false;
                                    move = 0;
                                    tomPosition = Alignment.topLeft;
                                    jerryPosition = Alignment.center;
                                  });
                                },
                                child: const Text('Restart'))
                          ],
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Move: $move',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isCatch ? null : changePosition,
        child: const Icon(Icons.start),
      ),
    );
  }

  void changePosition() {
    move += 1;
    double newXPositon = Random().nextDouble();
    double newYPositon = Random().nextDouble();
    double newXJPositon = Random().nextDouble();
    double newYJPositon = Random().nextDouble();
    var x = double.parse((newXPositon - newXJPositon).abs().toStringAsFixed(1));
    var y = double.parse((newYPositon - newYJPositon).abs().toStringAsFixed(1));

    setState(() {
      tomPosition = Alignment(newXPositon, newYPositon);
      jerryPosition = Alignment(newXJPositon, newYJPositon);
      print('x $x , y $y');
      if (x <= 0.2 && y <= 0.2) {
        isCatch = true;
      }
    });
  }
}
