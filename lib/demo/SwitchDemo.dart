import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool tempSwitchValue = false;
  _switchItem(value) {
    debugPrint('$value');
    setState(() {
      tempSwitchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: tempSwitchValue,
              title: Text('data'),
              subtitle: Text('this is data !'),
              secondary: tempSwitchValue
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
              onChanged: _switchItem,
              selected: tempSwitchValue,
              activeColor: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  tempSwitchValue ? '😂' : '😢',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                  value: tempSwitchValue,
                  onChanged: _switchItem,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
