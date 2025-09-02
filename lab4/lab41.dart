import 'dart:io';
import 'package:flutter/material.dart';
class Lab41 extends StatelessWidget {
  const Lab41({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Horizontal parts"),
      ),
      body: Column(
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
