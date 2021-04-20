import 'package:animation/widgets/animated_builder.dart';
import 'package:animation/widgets/animated_container.dart';
import 'package:animation/widgets/animated_cross_fade.dart';
import 'package:animation/widgets/animated_list.dart';
import 'package:animation/widgets/animated_opacity.dart';
import 'package:animation/widgets/animated_positioned.dart';
import 'package:animation/widgets/animated_switcher.dart';
import 'package:animation/widgets/hero.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: AContainer(),
        //child: APositioned(),
        //child: AOpacity(),
        //child: ACrossFade(),
        //child: ASwitcher(),
        //child: AList(),
        //child: ABuilder(),
        //child: AHero(),
      ),
    );
  }
}
