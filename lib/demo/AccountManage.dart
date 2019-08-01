import 'package:flutter/material.dart';
import '../model/post_account.dart';

class AccountMangae extends StatelessWidget {
  final TextStyle _subTextStyle = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
  // final String name = '';
  // final String branches = '';
  // final String workNnumber = '';
  // final String password = '';
  // final String deviceId = '';

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.0),
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(3.0),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: 50.0, maxHeight: 50.0),
                      child: Container(
                          decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(postAccount[index].imageUrl),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.grey[300],
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          postAccount[index].title,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        Text(
                          '网点: 7111111$index',
                          style: _subTextStyle,
                        ),
                        Text(
                          '工号: 0000$index (密码: 60000$index)',
                          style: _subTextStyle,
                        ),
                        Text(
                          '行者密码: 60000$index',
                          style: _subTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, bottom: 5.0),
                child: Text(
                  '设备号: 121313146757656$index',
                  style: _subTextStyle,
                ),
              ),
            ],
          ),
          Positioned(
            width: 50,
            top: 10.0,
            right: 10.0,
            child: Container(
              // padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Text(
                '编辑',
                textAlign: TextAlign.center,
                style: _subTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postAccount.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
