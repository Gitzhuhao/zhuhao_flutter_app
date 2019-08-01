import 'package:flutter/material.dart';
import 'package:zhuhao_flutter_app/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPageIndex) =>
          debugPrint('pages:$currentPageIndex'),
      controller: PageController(
          initialPage: 2, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            'ONE',
            style: TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: Text(
            'TWO',
            style: TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(
            'THREE',
            style: TextStyle(
                fontSize: 32.0,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: posts.length,
    );
  }

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subtitle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        // scrollDirection: Axis.horizontal,
        children: _buliderList(100));
  }

  List<Widget> _buliderList(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Text(
          'data$index',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      );
    });
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 100.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        // scrollDirection: Axis.horizontal,
        children: _buliderList(100));
  }

  List<Widget> _buliderList(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Text(
          'data$index',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      );
    });
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 8.0,
      //     mainAxisSpacing: 8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0,
          crossAxisSpacing: 8.0, 
          mainAxisSpacing: 8.0),
    );
  }

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
