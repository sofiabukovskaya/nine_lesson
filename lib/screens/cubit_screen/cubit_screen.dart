import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';

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
        create: (context) => CounterCubit(),
        child: const CubitScreen(),
      ),
    );
  }
}

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ми натискали кнопку стільки разів:',
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, count) => Text(
                '$count',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => cubit.increment(),
            tooltip: 'Increment',
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => cubit.decrement(),
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
