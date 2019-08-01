import 'package:flutter/material.dart';
import 'package:zhuhao_flutter_app/model/post.dart';

class ListViewDetail extends StatelessWidget {
  final Post posts;
  ListViewDetail({@required this.posts});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${posts.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            '${posts.imageUrl}',
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${posts.title}',
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  '${posts.author}',
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '${posts.description}',
                  style: Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
