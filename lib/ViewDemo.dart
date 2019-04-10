import 'package:flutter/material.dart';

import 'listView.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewBuilder();
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //设置自动翻页
      pageSnapping: true,
      //倒置
      reverse: false,
      //滚动方向
      scrollDirection: Axis.vertical,
      //页面变化监听
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      //滚动控制器
      controller: PageController(
        //初始显示页面
        initialPage: 1,
        //是否记录页面
        keepPage: false,
        //页面占用比例
        viewportFraction: 1,
      ),
      children: <Widget>[
        Container(
          color: Colors.lightGreen,
          alignment: Alignment(0, 0),
          child:
              Text("one", style: TextStyle(fontSize: 32, color: Colors.pink)),
        ),
        Container(
          color: Colors.lightBlueAccent,
          alignment: Alignment(0, 0),
          child:
              Text("Two", style: TextStyle(fontSize: 32, color: Colors.pink)),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child:
              Text("Three", style: TextStyle(fontSize: 32, color: Colors.pink)),
        )
      ],
    );
  }
}

class PageViewBuilder extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                Text(
                  posts[index].author,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
      scrollDirection: Axis.vertical,
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  //创建Item
  List<Widget> _buildItems(int length) {
    return List.generate(length, (int index) {
      return Item(
        index: index,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      //根据最大宽度或者高度设置行数
      maxCrossAxisExtent: 150.0,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: _buildItems(posts.length),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  //创建Item
  List<Widget> _buildItems(int length) {
    return List.generate(length, (int index) {
      return Item(
        index: index,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      //每行item个数
      crossAxisCount: 2,
      //交叉轴间距
      crossAxisSpacing: 5,
      //主轴间距
      mainAxisSpacing: 5,
      //滚动方向
      scrollDirection: Axis.vertical,
      children: _buildItems(posts.length),
    );
  }
}

class GridBuildDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Item(
      index: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
        itemBuilder: _itemBuilder);
  }
}

class Item extends StatelessWidget {
  final int index;

  Item({this.index = 0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  posts[index].author,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                )
              ],
            ))
      ],
    );
  }
}
