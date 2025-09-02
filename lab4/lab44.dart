import "package:flutter/material.dart";

class Lab44 extends StatelessWidget {
  const Lab44({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("9 different parts"),
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
                  flex: 4,
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
                  flex: 3,
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
