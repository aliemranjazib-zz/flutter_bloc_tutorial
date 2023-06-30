import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterIntitalState> {
  CounterCubit() : super(CounterIntitalState(counterValue: 10));

  increment() {
    emit(CounterIntitalState(counterValue: state.counterValue + 1));
  }

  decrement() {
    emit(CounterIntitalState(counterValue: state.counterValue - 1));
  }
}
