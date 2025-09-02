import 'package:flutter/material.dart';

class Lab161Page2 extends StatelessWidget {
  const Lab161Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Demo Page 2"),),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Column(
            children: [
              Text("Page 2",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Back"))
              
            ],
          ),
        ),
      ),
    );
  }
}
