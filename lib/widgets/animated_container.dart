import 'dart:math';

import 'package:flutter/material.dart';

class AContainer extends StatefulWidget {
  @override
  _AContainerState createState() => _AContainerState();
}

class _AContainerState extends State<AContainer> {
  double height = 100;
  double width = 100;
  bool tap = false;
  Color color = Colors.blue;
  _onAnimate() {
    setState(() {
      if (!tap) {
        height = 100;
        width = 200;
      } else {
        height = 200;
        width = 100;
      }
      color = Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255), 1);
      tap = !tap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onAnimate(),
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: height,
        width: width,
        color: color,
      ),
    );
  }
}
