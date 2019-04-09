import 'package:flutter/material.dart';
import 'package:flutter_app/BottomNavigationBarDemo.dart';
import 'package:flutter_app/DrawerDemo.dart';
import 'package:flutter_app/listView.dart';

class StructureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabController(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class StructureHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('isClick')),
        title: Text('StructureApp'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('isSearch')),
        ],
      ),
    );
  }
}

class TabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StructureApp'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('isSearch')),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black54,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(Icons.subway)),
              Tab(icon: Icon(Icons.directions_bus))
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListViewDemo(),
          Icon(Icons.bookmark_border, size: 128.0, color: Colors.black),
          Icon(Icons.directions_bike, size: 128.0, color: Colors.blue)
        ]),
        drawer: RealDrawer(),
        endDrawer: SampleDrawer(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
