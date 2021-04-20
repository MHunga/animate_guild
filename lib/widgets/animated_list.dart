import 'dart:math';

import 'package:flutter/material.dart';

class AList extends StatefulWidget {
  @override
  _AListState createState() => _AListState();
}

class _AListState extends State<AList> {
  List<Color> listColor = [
    Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
    Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
    Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1)
  ];

  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedList(
            key: _listKey,
            initialItemCount: listColor.length,
            itemBuilder: (context, index, animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset(0, 0),
                ).animate(animation),
                child: _itemList(index, listColor[index]),
              );
            }),
        Positioned(
          bottom: 50,
          right: 20,
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () => _insert(),
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () => _remove(),
                child: Icon(Icons.remove),
              ),
            ],
          ),
        )
      ],
    );
  }

  _itemList(int index, Color color) => Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Center(
          child: Text("Item $index"),
        ),
      );

  _insert() {
    listColor.insert(
        1,
        Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1));
    _listKey.currentState?.insertItem(1);
  }

  _remove() {
    listColor.removeAt(1);
    _listKey.currentState?.removeItem(
        1,
        (_, animation) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset(0, 0),
              ).animate(animation),
              child: _itemList(1, listColor[1]),
            ));
  }
}
