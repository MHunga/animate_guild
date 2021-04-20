import 'package:flutter/material.dart';

class ABuilder extends StatefulWidget {
  @override
  _ABuilderState createState() => _ABuilderState();
}

class _ABuilderState extends State<ABuilder>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<Offset>? _animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(300, 0)).animate(
        CurvedAnimation(
            parent: _animationController!, curve: Curves.easeInCubic));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) => Transform.translate(
        offset: _animation!.value,
        child: child,
      ),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}
