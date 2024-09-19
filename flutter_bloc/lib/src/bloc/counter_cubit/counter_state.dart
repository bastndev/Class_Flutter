part of 'counter_cubit.dart';

// this is a state of the counter cubit || project
class CounterState extends Equatable {
  final int count;
  final int transactionCount;

  const CounterState({
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

  @override
  List<Object> get props => [count, transactionCount];
}
