import 'package:flutter/material.dart';

class AOpacity extends StatefulWidget {
  @override
  _AOpacityState createState() => _AOpacityState();
}

class _AOpacityState extends State<AOpacity> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _changeOpacity(),
      child: AnimatedOpacity(
        opacity: opacityLevel,
        duration: Duration(seconds: 2),
        child: Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("Tap"),
        ),
      ),
    );
  }
}
