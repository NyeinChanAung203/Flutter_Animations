import 'package:flutter/material.dart';

class PositionedTransitionDemo extends StatefulWidget {
  const PositionedTransitionDemo({super.key});

  @override
  State<PositionedTransitionDemo> createState() =>
      _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState extends State<PositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _jerryAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _tomAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(40, 40, 0, 0))
        .animate(_controller);
    _jerryAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(180, 180, 0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Transition Demo'),
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: _tomAnimation,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey,
                child: Image.asset('assets/run_tom.png'),
              )),
          PositionedTransition(
              rect: _jerryAnimation,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: Image.asset(
                  'assets/run_jerry.png',
                  width: 200,
                  height: 200,
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (_controller.isCompleted) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      }),
    );
  }
}
