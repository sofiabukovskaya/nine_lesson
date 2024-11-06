import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = BaseCounterStore with _$CounterStore;

abstract class BaseCounterStore with Store {
  @observable
  int counter = 0;

  String name = '';

  @action
  void increment() {
    counter++;
  }
}
