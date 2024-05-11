import 'package:flutter/material.dart';

class TweenBuilderExample extends StatelessWidget {
  const TweenBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Builder'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 100, end: 200),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return Container(
              width: value,
              height: value,
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
