import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
        elevation: 0.0,
      ),
      body: ListViewDemo(),
      backgroundColor: Colors.grey[100],
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: listItemBuilder,
    );
  }

  Widget listItemBuilder(BuildContext context, int Index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[Index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(posts[Index].title, style: Theme.of(context).textTheme.title),
          Text(posts[Index].author, style: Theme.of(context).textTheme.subhead),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}

class Post {
  const Post({this.title, this.author, this.imageUrl});

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/candy-shop.jpg',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
  ),
  Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/contained.jpg',
  ),
  Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/dragon.jpg',
  ),
  Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/free_hugs.jpg',
  ),
  Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/gravity-falls.png',
  ),
  Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/icecreamtruck.png',
  ),
  Post(
    title: 'keyclack',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/keyclack.jpg',
  ),
  Post(
    title: 'Overkill',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/overkill.png',
  ),
  Post(
    title: 'Say Hello to Barry',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
  ),
  Post(
    title: 'Space Skull',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/space-skull.jpg',
  ),
  Post(
    title: 'The Old Fashioned',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/the-old-fashioned.png',
  ),
  Post(
    title: 'Tornado',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/tornado.jpg',
  ),
  Post(
    title: 'Undo',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/undo.jpg',
  ),
  Post(
    title: 'White Dragon',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/white-dragon.jpg',
  )
];
