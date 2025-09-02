import 'package:flutter/material.dart';

class Lab141 extends StatelessWidget {
  const Lab141({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple 3D PageView"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: PageView(
        controller: PageController(viewportFraction: 0.8),
        children: [
          buildPage("Page 1", Colors.blue),
          buildPage("Page 2", Colors.green),
          buildPage("Page 3", Colors.orange),
          buildPage("Page 4", Colors.red),
          buildPage("Page 5", Colors.purple),
        ],
      ),
    );
  }

  Widget buildPage(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
      child: Card(
        color: color,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
