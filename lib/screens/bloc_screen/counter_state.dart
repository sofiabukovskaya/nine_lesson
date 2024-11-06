class CounterState {
  CounterState(this.counter);
  final int counter;
}

class ErrorState {
  final String errorText;

  ErrorState({required this.errorText});
}