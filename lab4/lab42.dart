import 'package:flutter/material.dart';

class Lab42 extends StatelessWidget {
  const Lab42({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Vertical parts"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            child: Container(color: Colors.yellow),
          )
        ],
      ),
    );
  }
}
