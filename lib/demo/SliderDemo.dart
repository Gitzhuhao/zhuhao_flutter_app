import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _tempSlider = 0.0;
  _sliderState(value) {
    debugPrint('$value');
    setState(() {
      _tempSlider = value;
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
            Text('当前状态：$_tempSlider'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _tempSlider,
                  onChanged: _sliderState,
                  max: 10.0,
                  min: 0.0,
                  divisions: 10,
                  label: '${_tempSlider.toInt()}',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
