import 'package:flutter/material.dart';

//抽屉组件
class RealDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("郁"),
            accountEmail: Text("18210490506@163.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIibScu3HluppH2jia20FGuRfBicZKygg150LmV7PCsliaO6gcMicd48jmm3UpJMPxSjGwR1P9ZDHsIlsw/132")),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i0.hdslb.com/bfs/archive/cb96780144605c280080246d5d84c1109c0137a9.jpg@470w_216h.jpg"),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.blue, BlendMode.hardLight))),
          ),
          ListTile(
            title: Text("message"),
            onTap: () => Navigator.pop(context),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            leading: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text("delete"),
            onTap: () => Navigator.pop(context),
            trailing: Icon(
              Icons.delete,
              color: Colors.black12,
              size: 22.0,
            ),
            leading: Icon(
              Icons.delete,
              color: Colors.black12,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text("phone"),
            trailing: Icon(
              Icons.phone,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
            leading: Icon(
              Icons.phone,
              color: Colors.black12,
              size: 22.0,
            ),
          )
        ],
      ),
    );
  }
}

//简单抽屉组件
class SampleDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("this is a text")],
      ),
    );
  }
}
