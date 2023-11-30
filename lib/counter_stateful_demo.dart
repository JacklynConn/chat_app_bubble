import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
   final Color buttonColor;
   const CounterStateful({super.key, required this.buttonColor});

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
      appBar: AppBar(
        title: const Text("Counter Stateful"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
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
