import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecture_9/screens/bloc_screen/counter_bloc.dart';
import 'package:lecture_9/screens/bloc_screen/counter_event.dart';
import 'package:lecture_9/screens/bloc_screen/counter_state.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter using BLoC'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              'Counter: ${state.counter}',
              style: const TextStyle(
                fontSize: 40,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(
              IncrementEvent(),
            ),
            tooltip: 'Increment',
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => counterBloc.add(
              DecrementEvent(),
            ),
            tooltip: 'Decrement',
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
