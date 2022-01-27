import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var displayText = "Hello World";

void main() {
  runApp(
    CleanApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: Image.asset(
                "images/rocket.gif",
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Text(
              displayText,
              style: GoogleFonts.lato(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CleanApp extends StatelessWidget {
  final Widget home;

  CleanApp({
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple, // iOS PWA status bar background color for light AND dark modes
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
