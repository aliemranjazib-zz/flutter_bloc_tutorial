import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter_app/bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.counterValue.toString(),
                style: const TextStyle(fontSize: 40, color: Colors.deepPurple),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                counterBloc.add(IncrementEvent());
              },
              child: const Text("increment")),
          ElevatedButton(
              onPressed: () {
                counterBloc.add(DecrementEvent());
              },
              child: const Text("decrement")),
        ],
      ),
    );
  }
}
