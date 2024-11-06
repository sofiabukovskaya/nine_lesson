import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter_store.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final CounterStore counterStore = CounterStore();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MobX Counter Example'),
        ),
        body: Center(
          child: Observer(
            builder: (_) => Text(
              '${counterStore.counter}',
              style: const TextStyle(fontSize: 48),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counterStore.increment,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
