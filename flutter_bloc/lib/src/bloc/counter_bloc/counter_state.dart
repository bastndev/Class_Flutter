part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int count;
  final int transactionCount;

  const CounterState({
    this.count = 10,
    this.transactionCount = 0,
  });

  CounterState copyWith({
    int? count,
    int? transactionCount,
  }) {
    return CounterState(
      count: count ?? this.count,
      transactionCount: transactionCount ?? this.transactionCount,
    );
  }

  @override
  List<Object> get props => [count, transactionCount];
}
