import 'package:flutter/material.dart';

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

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget _raiseButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          //替换当前主题
          // data: ThemeData(
          // ),
          //替换当下Widget主题
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(5.0)),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('button'),
            onPressed: () {},
            elevation: 0.0,
            splashColor: Colors.white10,
            // textColor: Colors.white,
            // color: Colors.blue,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          elevation: 4.0,
        ),
      ],
    );

    final Widget _outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          //替换当前主题
          // data: ThemeData(
          // ),
          //替换当下Widget主题
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(5.0)),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            splashColor: Colors.grey[200],
            highlightedBorderColor: Colors.grey,
            textColor: Colors.grey,
            // color: Colors.blue,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget _fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    );

    final Widget _expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 3,
          child: OutlineButton(
            child: Text('button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    );

    final Widget _buttonBar = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 32.0)),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('button'),
                onPressed: () {},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
              OutlineButton(
                child: Text('button'),
                onPressed: () {},
                splashColor: Colors.grey,
                textColor: Theme.of(context).accentColor,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _flatButtonDemo,
            _raiseButtonDemo,
            _outlineButtonDemo,
            _fixedWidthButton,
            _expandedButton,
            _buttonBar
          ],
        ),
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

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
    onPressed: () {},
    backgroundColor: Colors.blue,
    elevation: 4.0,
    // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    label: Text(
      'add',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    icon: Icon(
      Icons.add,
      color: Colors.white,
    ),
    onPressed: () {},
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      // floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}
