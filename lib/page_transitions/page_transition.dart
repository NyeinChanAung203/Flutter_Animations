import 'package:flutter/material.dart';
import 'package:flutter_animations/page_transitions/example_page.dart';
import 'package:flutter_animations/page_transitions/page_fade_transition_demo.dart';

class PageTransitionAnimations extends StatelessWidget {
  const PageTransitionAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Transition Animations'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageFadeTransition(page: const ExamplePage()));
                  },
                  child: const Text('Page Fade Transition')),
            ],
          ),
        ),
      ),
    );
  }
}