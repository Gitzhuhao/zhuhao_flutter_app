import 'package:flutter/material.dart';
import 'package:zhuhao_flutter_app/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //  title: Text('data'),
            //  pinned: true,
            // backgroundColor: Colors.white,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'zhuhao'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w300),
              ),
              background: Image.network('https://resources.ninghao.org/images/free_hugs.jpg',fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(10.0),
            elevation: 14.0,
            shadowColor: Colors.grey.withOpacity(0.6),
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        posts[index].title,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        posts[index].author,
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }, childCount: posts.length),
    );
  }
}
