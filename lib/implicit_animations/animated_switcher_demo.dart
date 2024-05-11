import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({super.key});

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher Demo'),
      ),
      body: Center(
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        await Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            if (isLoading) {
                              isLoading = false;
                            }
                          });
                        });
                      },
                      child: const Text("Login"),
                    ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isLoading = false;
          });
        },
        child: const Icon(Icons.start),
      ),
    );
  }
}
