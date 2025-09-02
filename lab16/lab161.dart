import 'package:flutter/material.dart';
import 'package:ta_flutter/lab16/lab161_page2.dart';

class Lab161 extends StatefulWidget {
  const Lab161({super.key});
  @override
  State<Lab161> createState() => _Lab161State();
}

class _Lab161State extends State<Lab161> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Page 1',
                style: TextStyle(color: Colors.red, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lab161Page2(),
                    ),
                  );
                },
                child: Text('go')),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
