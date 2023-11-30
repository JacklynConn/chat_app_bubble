import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({super.key});

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
