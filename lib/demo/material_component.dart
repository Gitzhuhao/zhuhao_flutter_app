import 'package:flutter/material.dart';
import 'package:zhuhao_flutter_app/demo/RadioDemo.dart';
import 'package:zhuhao_flutter_app/demo/SliderDemo.dart';
import 'package:zhuhao_flutter_app/demo/SwitchDemo.dart';
import 'package:zhuhao_flutter_app/demo/buttonDemo.dart';
import 'package:zhuhao_flutter_app/demo/checkBoxDemo.dart';
import 'package:zhuhao_flutter_app/demo/floatActionButtonDemo.dart';
import 'package:zhuhao_flutter_app/demo/form_demo.dart';
import 'package:zhuhao_flutter_app/demo/popupMenuButtonDemo.dart';

class MaterialComponentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponentDemo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
           ListItem(
            title: 'SliderDemo',
            page: SliderDemo(),
          ),
           ListItem(
            title: 'SwitchDemo',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'RadioDemo',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'CheckBoxDemo',
            page: CheckBoxDemo(),
          ),
          ListItem(
            title: 'FormDemo',
            page: FormDemo(),
          ),
          ListItem(
            title: 'PopupMenuButtonDemo',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButtonDemo',
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
