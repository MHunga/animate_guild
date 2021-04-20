import 'package:flutter/material.dart';

class ASwitcher extends StatefulWidget {
  @override
  _ASwitcherState createState() => _ASwitcherState();
}

class _ASwitcherState extends State<ASwitcher> {
  Widget? switcherWidget;
  Widget widget1 = Container(
    key: ValueKey(1),
    height: 100,
    width: 200,
    color: Colors.blue,
  );
  Widget widget2 = Container(
    key: ValueKey(2),
    height: 200,
    width: 100,
    color: Colors.green,
  );

  bool isSwitcher = false;

  @override
  void initState() {
    switcherWidget = widget1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitcher = !isSwitcher;
          isSwitcher ? switcherWidget = widget2 : switcherWidget = widget1;
        });
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 400),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: switcherWidget,
      ),
    );
  }
}
