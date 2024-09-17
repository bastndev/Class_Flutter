import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

// method that emitted new state
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(count: 5));

  void increaseBy(int value) {
    emit(state.copyWith(
      count: state.count + value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void reset() {
    emit(state.copyWith(
      count: 0,
      transactionCount: 0,
    ));
  }
}
