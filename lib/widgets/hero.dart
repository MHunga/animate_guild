import 'package:flutter/material.dart';

class AHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Hero(
              tag: "HeroTag",
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Page2())),
                child: FlutterLogo(
                  size: 80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Hero(
          tag: "HeroTag",
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
