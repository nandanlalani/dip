import 'package:flutter/material.dart';

class Lab111 extends StatefulWidget {
  const Lab111({super.key});
  @override
  State<Lab111> createState() => _Lab111State();
}

class _Lab111State extends State<Lab111> {
  List<int> numbers = [
    6697,
    2203,
    4574,
    6158,
    2509,
    1795,
    9998,
    7984,
    3416,
    309,
    1372,
    4542,
    7710,
    3906,
    3397,
    4906,
    9947,
    5906,
    7969,
    496,
    6515,
    686,
    1310,
    7334,
    5207,
    7731,
    6385,
    9391,
    6964,
    9274,
    1538,
    924,
    9836,
    9815,
    6477,
    5045,
    6899,
    6280,
    4966,
    3531
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'List View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: numbers.map((e) {
          return ListTile(title: Text(e.toString()),);
        },).toList()
      ),
    );
  }
}
