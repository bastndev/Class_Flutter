import 'package:flutter_bloc/flutter_bloc.dart';
// bloc is part of event you don't need import any
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) {
      emit(state + 1);
    });
    on<CounterDecrement>((event, emit) {
      emit(state - 1);
    });
  }
}
