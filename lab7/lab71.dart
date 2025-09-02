import 'package:flutter/material.dart';

class Lab71 extends StatelessWidget {
  const Lab71({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey, title: Text("Image asset"),),
      body: Center(
        child: Image.asset("assets/img/Ayustara - 75.jpg"),
      ),
    );
  }
}
