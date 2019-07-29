import 'package:flutter/material.dart';
import 'package:zhuhao_flutter_app/demo/basic_demo.dart';
import 'package:zhuhao_flutter_app/demo/bottom_navigaion_demo.dart';
import 'package:zhuhao_flutter_app/demo/drawer_demo.dart';
import 'package:zhuhao_flutter_app/demo/hello_demo.dart';
import 'package:zhuhao_flutter_app/demo/layout_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug显示
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white12),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'navigation',
          //   onPressed: () => debugPrint('menu test'),
          // ),
          title: Text(
            '首页',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'navigation',
              onPressed: () => debugPrint('search test'),
            ),
            // IconButton(
            //   icon: Icon(Icons.more_horiz),
            //   tooltip: 'navigation',
            //   onPressed: ()=>debugPrint('search test'),
            // ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
        ),
        drawer: DrawerDemo(),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_florist, size: 128.0, color: Colors.grey[200]),
            // Icon(Icons.change_history, size: 128.0, color: Colors.grey[200]),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.grey[200]),
            ListViewDemo(),
            BasicDemo(),
            TextDecrationDemo(),
            LayoutDemo(),
            // RichTextDemo(),
            // Hello(),
          ],
        ),
        // body: Hello()
        // body: ListViewDemo()
        bottomNavigationBar: BottomNavigationDemo(),
      ),
    );
  }
}


