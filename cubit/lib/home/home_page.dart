import 'package:bloc_1/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterCubit, CounterIntitalState>(
              builder: (context, state) {
                return Text(
                  '${state.counterValue}',
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                child: Text("increament")),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                child: Text("decrement")),
          ],
        ),
      ),
    );
  }
}
