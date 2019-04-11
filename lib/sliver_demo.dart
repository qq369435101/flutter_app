import 'package:flutter/material.dart';
import 'package:flutter_app/ViewDemo.dart';
import 'package:flutter_app/listView.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('hello'),
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "hello flutter",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 5,
                    color: Colors.lightBlueAccent),
              ),
              background: Image.network(
                posts[posts.length - 1].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //适配刘海屏（忽略）
          SliverSafeArea(
            //设置内边距
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  Widget builder(BuildContext context, int index) {
    return Item(
      index: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(builder, childCount: posts.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          //控制条目控件长宽比
          childAspectRatio: 16 / 9),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  Widget builder(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.0),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 14.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(builder, childCount: posts.length),
    );
  }
}
