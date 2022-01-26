import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var displayText = "Hello World";
var displayColor = Colors.black;

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/rocket.gif",
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              displayText,
              style: GoogleFonts.lato(
                color: displayColor,
                fontSize: 30,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
