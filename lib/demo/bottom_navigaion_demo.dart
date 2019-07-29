import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

   int _currentIndex = 0;

  void _onTapBottomNavigation(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTapBottomNavigation,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), title: Text('历史')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), title: Text('发现')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('我的')),
            ],
          );
  }
}