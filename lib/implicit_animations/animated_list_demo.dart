import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedListDemo extends StatefulWidget {
  const AnimatedListDemo({super.key});

  @override
  State<AnimatedListDemo> createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _list = ['123'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List Demo'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _list.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              tileColor: Colors.amber,
              title: Text(_list[index]),
              trailing: IconButton(
                  onPressed: () {
                    final title = _list[index];
                    setState(() {
                      _listKey.currentState?.removeItem(
                          index,
                          (context, animation) => ListTile(
                                title: Text(title),
                                tileColor: Colors.red,
                              ));
                      _list.remove(_list[index]);
                    });
                  },
                  icon: const Icon(Icons.delete)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.insert(0, Random.secure().nextInt(1000).toString());
            _listKey.currentState?.insertItem(0);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
