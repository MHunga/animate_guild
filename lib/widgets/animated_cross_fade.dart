import 'package:flutter/material.dart';

class ACrossFade extends StatefulWidget {
  @override
  _ACrossFadeState createState() => _ACrossFadeState();
}

class _ACrossFadeState extends State<ACrossFade> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;
  bool isFirst = false;
  _changeState() {
    setState(() {
      isFirst = !isFirst;
      isFirst
          ? crossFadeState = CrossFadeState.showFirst
          : crossFadeState = CrossFadeState.showSecond;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _changeState(),
      child: AnimatedCrossFade(
          alignment: Alignment.center,
          firstChild: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Text("Hello!"),
          ),
          secondChild: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            color: Colors.green,
            child: Text("GoodBye!"),
          ),
          crossFadeState: crossFadeState,
          duration: Duration(seconds: 1)),
    );
  }
}
