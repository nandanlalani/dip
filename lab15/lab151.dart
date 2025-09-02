import 'package:flutter/material.dart';

class Lab151 extends StatelessWidget {
  const Lab151({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar demo"),
          backgroundColor: Colors.black,
          //foregroundColor: Colors.white,
          bottom: TabBar(labelColor: Colors.white, tabs: [
            Tab(
              text: "Home",
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Tab(
              text: "About us",
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
            Tab(
              text: "Contact us",
              icon: Icon(
                Icons.contact_page,
                color: Colors.white,
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "About us",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Contact us",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
