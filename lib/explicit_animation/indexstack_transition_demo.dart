import 'package:flutter/material.dart';

class IndexStackTransitionDemo extends StatefulWidget {
  const IndexStackTransitionDemo({super.key});

  @override
  State<IndexStackTransitionDemo> createState() =>
      _IndexStackTransitionDemoState();
}

class _IndexStackTransitionDemoState extends State<IndexStackTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400))
      ..forward();
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
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
        title: const Text('IndexStack Transition Demo'),
      ),
      body: IndexedStack(
        index: index,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                color: Colors.orange,
                child: Image.asset(
                  'assets/run_jerry.png',
                ),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                color: Colors.blue,
                child: Image.asset(
                  'assets/run_tom.png',
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.reset();
        _controller.forward();
        setState(() {
          index += 1;
          if (index > 1) {
            index = 0;
          }
        });
      }),
    );
  }
}
