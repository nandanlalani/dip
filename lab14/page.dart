import 'dart:math';

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final String title;
  final int index;
  final double currentIndex;
  Page1(
      {super.key,
      required this.title,
      required this.index,
      required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    final scale = max(0.9, 1 - (index - currentIndex).abs() * 0.2);
    return Center(
      child: Transform.scale(
        scale: scale,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.shade500,
          ),
          child: Center(
              child: Text(title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ))),
        ),
      ),
    );
  }
}
