import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CounterPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
