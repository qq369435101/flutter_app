import 'package:flutter/material.dart';

class MainPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => NavigatorDemo(),
        '/about': (context) => Page(
              title: "about",
            ),
      },
//      home: NavigatorDemo(),
      initialRoute: '/',
    );
  }
}

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(onPressed: null, child: Text("Home")),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
              child: Text("About")),
        ],
      )),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
