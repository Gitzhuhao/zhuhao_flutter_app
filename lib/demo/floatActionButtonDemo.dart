import 'package:flutter/material.dart';

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
