import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pink,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("book")),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_open), title: Text("folder_open")),
          BottomNavigationBarItem(icon: Icon(Icons.cake), title: Text("cake")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Mine"))
        ]);
  }
}
