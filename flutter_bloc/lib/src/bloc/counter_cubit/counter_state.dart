part of 'counter_cubit.dart';

// this is a state of the counter cubit || project
class CounterState {
  final int count;
  final int transactionCount;

  CounterState({
    this.count = 0,
    this.transactionCount = 0,
  });

  copyWith({
    int? count,
    int? transactionCount,
  }) {
    return CounterState(
      count: count ?? this.count,
      transactionCount: transactionCount ?? this.transactionCount,
    );
  }
}
