import 'package:flutter/material.dart';

void practice() {
  runApp(
      new Practice(items: new List<String>.generate(1000, (i) => "Item $i")));
}

class Practice extends StatelessWidget {
  final List<String> items;

  const Practice({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "this is a practice",
      home: Scaffold(
        appBar: AppBar(
          title: new Text("this is a practice"),
        ),
        body: new MyList(items: items),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        });
  }

  MyList({Key key, @required this.items}) : super(key: key);
}
