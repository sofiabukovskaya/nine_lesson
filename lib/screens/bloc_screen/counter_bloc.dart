import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecture_9/screens/bloc_screen/counter_event.dart';
import 'package:lecture_9/screens/bloc_screen/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(
          CounterState(0),
        ) {
    on<IncrementEvent>(
      (_, emit) {
        emit(
          CounterState(state.counter + 1),
        );
      },
    );

    on<DecrementEvent>(
      (_, emit) {
        emit(
          CounterState(state.counter - 1),
        );
      },
    );
  }
}
