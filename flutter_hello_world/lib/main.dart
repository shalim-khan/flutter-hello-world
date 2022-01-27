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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                "images/rocket.gif",
                height: 120,
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
        primaryColor: Colors.cyan, // iOS PWA status bar background color for light AND dark modes
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
    );
  }
}
