import "package:flutter/material.dart";

class Lab43 extends StatelessWidget {
  const Lab43({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9 equals parts"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.greenAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.red,
              )),
              Expanded(
                  child: Container(
                color: Colors.orangeAccent,
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.blueAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.greenAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.red,
              )),
              Expanded(
                  child: Container(
                color: Colors.orangeAccent,
              ))
            ],
          )),
        ],
      ),
    );
  }
}
