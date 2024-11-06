import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  String name = '';
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); // Оповіщення про зміну стану
  }
}