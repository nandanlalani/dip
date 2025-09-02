import 'package:flutter/material.dart';

class Lab72 extends StatelessWidget {
  const Lab72({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey, title: Text("Image asset"),),
      body: Center(
        child: Stack(
          children: [
            Image.asset("assets/img/Ayustara - 75.jpg"),
            Text("Ayustara",style: TextStyle(fontSize: 50,color: Colors.green),)
          ],
        ),
      ),
    );
  }
}
