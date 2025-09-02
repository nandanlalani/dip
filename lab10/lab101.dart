import 'package:flutter/material.dart';

class Lab101 extends StatefulWidget {
  const Lab101({super.key});

  @override
  State<Lab101> createState() => _Lab101State();
}

class _Lab101State extends State<Lab101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'To-Do List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Lab - 8'),
              trailing: Checkbox(value: true, onChanged: (value) {}),
            ),
            ListTile(
              title: Text('Lab - 9'),
              trailing: Checkbox(value: false, onChanged: (value) {}),
            ),
            ListTile(
              title: Text('Lab - 10'),
              trailing: Checkbox(value: false, onChanged: (value) {}),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text('Add To-Do'),
      ),
    );
    ;
  }
}
