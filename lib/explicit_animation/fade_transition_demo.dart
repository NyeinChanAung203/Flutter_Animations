import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget {
  const FadeTransitionDemo({super.key});

  @override
  State<FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
        title: const Text('Fade Transition Demo'),
      ),
      body: Center(
        child: FadeTransition(
            opacity: _animation,
            child: const Text(
              'Hello World',
              style: TextStyle(fontSize: 32),
            )),
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
