import 'package:flutter/material.dart';

class AnimatedRocketShip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
