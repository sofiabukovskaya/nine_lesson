import 'package:flutter/material.dart';
import 'package:lecture_9/screens/provider_screen/counter_model.dart';
import 'package:lecture_9/screens/provider_screen/provider_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Налаштування Provider на верхньому рівні додатку
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProviderScreen(),
    );
  }
}
