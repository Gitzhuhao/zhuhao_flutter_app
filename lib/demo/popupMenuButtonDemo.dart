import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = "data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('data0'),
                      value: 'data0',
                    ),
                    PopupMenuItem(
                      child: Text('data1'),
                      value: 'data1',
                    ),
                    PopupMenuItem(
                      child: Text('data2'),
                      value: 'data2',
                    ),
                    PopupMenuItem(
                      child: Text('data3'),
                      value: 'data3',
                    ),
                  ],
                  onSelected: (value) {
                    debugPrint(value);
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
