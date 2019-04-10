import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        //主轴
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴
//        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 100, maxWidth: 100),
            child: IconBadge(Icons.beach_access),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 300,
      height: size + 330,
      color: Colors.blueAccent,
    );
  }
}

class SizeBoxDemo extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;

  SizeBoxDemo(
      {this.height = 100, this.width = 100, this.icon = Icons.phone_iphone});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        //设置内容的位置
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        SizeBoxDemo(
          width: 400,
          height: 400,
        ),
        SizeBoxDemo(),
        SizeBoxDemo(
          icon: Icons.pool,
          width: 50,
          height: 50,
        ),
        Positioned(
          child: SizeBoxDemo(icon: Icons.beach_access),
          top: 50,
          right: 0,
          left: 0,
        )
      ],
    );
  }
}
