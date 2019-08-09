import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}
class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _currentChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: Text('this is checkBox Test!'),
              value: _currentChecked,
              subtitle: Text('this is subtitle Test!'),
              secondary: Icon(Icons.school),
              activeColor: Colors.blue,
              selected: _currentChecked,
              onChanged: (value) {
                setState(() {
                  _currentChecked = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _currentChecked,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _currentChecked = value;
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
