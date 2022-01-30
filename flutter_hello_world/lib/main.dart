import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animated_rocket_ship.dart';
import 'utils.dart';

void main() {
  runApp(CleanApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedRocketShip(),
            SizedBox(height: 20),
            helloWorldText(),
          ],
        ),
      ),
    );
  }

  Text helloWorldText() {
    return Text(
      "Hello World",
      style: GoogleFonts.lato(fontSize: 30),
    );
  }
}
