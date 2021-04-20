import 'package:flutter/material.dart';

class APositioned extends StatefulWidget {
  @override
  _APositionedState createState() => _APositionedState();
}

class _APositionedState extends State<APositioned> {
  bool isPositioned = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            AnimatedPositioned(
                height: isPositioned ? 100 : 80.0,
                width: isPositioned ? 200 : 80,
                top: isPositioned ? 0 : 90,
                left: isPositioned ? 90 : 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPositioned = !isPositioned;
                      print(isPositioned);
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text("Tap"),
                  ),
                ),
                duration: Duration(seconds: 1)),
          ],
        ));
  }
}
