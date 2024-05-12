import 'package:flutter/material.dart';

class DefaultTextStyleTransitionDemo extends StatefulWidget {
  const DefaultTextStyleTransitionDemo({super.key});

  @override
  State<DefaultTextStyleTransitionDemo> createState() =>
      _DefaultTextStyleTransitionDemoState();
}

class _DefaultTextStyleTransitionDemoState
    extends State<DefaultTextStyleTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final style1 = const TextStyle(fontSize: 28, color: Colors.blue);
  final style2 = const TextStyle(fontSize: 38, color: Colors.red);
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
        title: const Text('Default Text Style Transition Demo'),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
            style: _animation.drive(TextStyleTween(begin: style1, end: style2)),
            child: const Text(
              'Hello World',
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
