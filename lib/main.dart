import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'practice.dart';

void main() {
  runApp(
      new Practice(items: new List<String>.generate(1000, (i) => "Item $i")));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "this is a flutter demo",
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewRandomState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPairs = new WordPair.random();
    return new Text(wordPairs.asPascalCase);
  }
}

class ListViewRandomState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dasd"),
      ),
      body: _buildData(),
    );
  }

  Widget _buildData() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return new Divider();
        }
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: new Text(
          pair.asPascalCase,
          style: _biggerFont,
        )),
      ),
    );
  }
}
