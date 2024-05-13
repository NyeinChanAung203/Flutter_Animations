import 'package:flutter/material.dart';
import 'package:flutter_animations/page_transitions/example_page.dart';
import 'package:flutter_animations/page_transitions/page_fade_transition_demo.dart';
import 'package:flutter_animations/page_transitions/page_rotation_transition_demo.dart';
import 'package:flutter_animations/page_transitions/page_scale_transition_demo.dart';
import 'package:flutter_animations/page_transitions/page_slide_transition_demo.dart';

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
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageScaleTransition(page: const ExamplePage()));
                  },
                  child: const Text('Page Scale Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageRouteTransition(page: const ExamplePage()));
                  },
                  child: const Text('Page Rotation Transition')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(PageSlideTransition(page: const ExamplePage()));
                  },
                  child: const Text('Page Slide Transition')),
            ],
          ),
        ),
      ),
    );
  }
}
