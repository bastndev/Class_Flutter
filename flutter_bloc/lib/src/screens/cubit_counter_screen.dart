import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/src/bloc/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  void increaseCounterBy(BuildContext context, int value) {
    context.read<CounterCubit>().increaseBy(value);
  }

  @override
  Widget build(BuildContext context) {
    // final counterState = context.watch<CounterCubit>().state; // optional

    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterCubit value) {
          return Text('Change Cubit: ${value.state.transactionCount}');
        }),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterCubit>().reset();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          // buildWhen: (previous, current) => previous.count != current.count, // optional
          builder: (context, state) {
            return Text('Counter Cubit: ${state.count}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            child: const Text('+3'),
            onPressed: () {
              increaseCounterBy(context, 3);
            },
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 2,
            child: const Text('+2'),
            onPressed: () {
              increaseCounterBy(context, 2);
            },
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 3,
            child: const Text('+1'),
            onPressed: () {
              increaseCounterBy(context, 1);
            },
          ),
        ],
      ),
    );
  }
}
