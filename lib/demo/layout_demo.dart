import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              // IconBadge(Icons.pool, size: 10.0),
              SizedBox(
                height: 300.0,
                width: 300.0,
                child: Container(
                  alignment: Alignment(-1.0, -1.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.pool, size: 30.0),
                ),
              ),
              Positioned(
                width: 30.0,
                height: 30.0,
                top: 20.0,
                right: 20.0,
                child: IconBadge(Icons.pool, size: 10.0),
              ),
              Positioned(
                width: 30.0,
                height: 30.0,
                top: 40.0,
                right: 40.0,
                child: IconBadge(Icons.pool, size: 10.0),
              ),
              Positioned(
                width: 30.0,
                height: 30.0,
                top: 100.0,
                right: 100.0,
                child: IconBadge(Icons.pool, size: 10.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 30});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: 30.0 + size,
      height: 30.0 + size,
      color: Colors.blue,
    );
  }
}
