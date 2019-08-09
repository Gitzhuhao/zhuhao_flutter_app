import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioItemA = 0;

  _handlerChanged(value) {
    debugPrint('$value');
    setState(() {
      _radioItemA = value;
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
            Text('_radioItemA:$_radioItemA'),
            SizedBox(
              height: 32.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioItemA,
              onChanged: _handlerChanged,
              title: Text('data0'),
              subtitle: Text('this is data0'),
              secondary: Icon(Icons.filter_1),
              activeColor: Colors.blue,
              selected: _radioItemA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioItemA,
              onChanged: _handlerChanged,
              title: Text('data1'),
              subtitle: Text('this is data1'),
              secondary: Icon(Icons.filter_1),
              activeColor: Colors.blue,
              selected: _radioItemA == 1,
            ),
            RadioListTile(
              value: 2,
              groupValue: _radioItemA,
              onChanged: _handlerChanged,
              title: Text('data2'),
              subtitle: Text('this is data2'),
              secondary: Icon(Icons.filter_1),
              activeColor: Colors.blue,
              selected: _radioItemA == 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioItemA,
                  onChanged: _handlerChanged,
                  activeColor: Colors.blue,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioItemA,
                  onChanged: _handlerChanged,
                  activeColor: Colors.blue,
                ),
                Radio(
                  value: 2,
                  groupValue: _radioItemA,
                  onChanged: _handlerChanged,
                  activeColor: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
