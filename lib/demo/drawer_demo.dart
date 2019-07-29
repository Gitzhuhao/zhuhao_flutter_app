import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //   ),
          // ),
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://profile.csdnimg.cn/1/E/2/1_zh1053935924'),
            ),
            accountName: Text('猪猪侠',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            accountEmail: Text('zzzh@qq.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://resources.ninghao.org/images/dragon.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.blue[400].withOpacity(0.5), BlendMode.srcOver)),
              color: Colors.blue[400],
            ),
          ),

          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.left,
            ),
            // trailing:
            //     Icon(Icons.message, size: 25.0, color: Colors.grey[200]),
            leading: Icon(Icons.message, size: 25.0, color: Colors.grey[200]),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favorite',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.favorite, size: 25.0, color: Colors.grey[200]),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'update',
              textAlign: TextAlign.left,
            ),
            leading: Icon(Icons.update, size: 25.0, color: Colors.grey[200]),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
