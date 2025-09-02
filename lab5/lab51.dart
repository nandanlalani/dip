import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Lab51 extends StatelessWidget {
  const Lab51({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Hello World",
          style: TextStyle(
              fontSize: 40,
              //fontFamily: GoogleFonts.aboreto().fontFamily,
              color: Colors.cyanAccent,
              backgroundColor: Colors.black),
        ),
      ),
    );
  }
}
