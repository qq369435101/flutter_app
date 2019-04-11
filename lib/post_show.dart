import 'package:flutter/material.dart';
import 'package:flutter_app/listView.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({@required this.post});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: false,
              expandedHeight: 180,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "${post.title}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 4,
                      color: Colors.white),
                ),
                background: Image.network(
                  post.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
//            SliverSafeArea(
//                sliver: Center(
//              child: Column(
//                children: <Widget>[
//                  Image.network(
//                    post.imageUrl,
//                    fit: BoxFit.cover,
//                  ),
//                  Text("${post.title}"),
//                  Text("${post.author}")
//                ],
//              ),
//            ))
          ],
        ),
      ),
    );
  }
}
