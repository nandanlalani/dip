import 'package:flutter/material.dart';

class Lab52 extends StatefulWidget {
  const Lab52({super.key});

  @override
  State<Lab52> createState() => _Lab52State();
}

class _Lab52State extends State<Lab52> {
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Demo"),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          TextField(
            controller: _name,
          ),
          ElevatedButton(onPressed: () {
            print("The entered name is ${_name.text.toString()}");
            setState(() {
            });
          }, child: Text("Submit")),
          Text(_name.text.toString(),style: TextStyle(fontSize: 40),)
        ],
      )
    );
  }
}
