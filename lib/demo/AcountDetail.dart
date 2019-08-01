import 'package:flutter/material.dart';

class AcountDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 150.0, minWidth: MediaQuery.of(context).size.width),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://resources.ninghao.org/images/the-old-fashioned.png'),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white10, BlendMode.hardLight)),
                      border: Border.all(
                        color: Colors.grey[100],
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            // color: Colors.white,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextTitleView(
                  title: '用户：',
                  subTitle: '猪猪侠',
                ),
                SizedBox(
                  height: 1,
                ),
                TextTitleView(
                  title: '网点：',
                  subTitle: '745003',
                ),
                 SizedBox(
                  height: 10,
                ),
                 TextTitleView(
                  title: '工号：',
                  subTitle: '0174089',
                ),
                SizedBox(
                  height: 1,
                ),
                 TextTitleView(
                  title: '密码：',
                  subTitle: '654321',
                ),
                SizedBox(
                  height: 1,
                ),
                 TextTitleView(
                  title: '圆通行者密码：',
                  subTitle: '654321',
                ),
                SizedBox(
                  height: 10,
                ),
                 TextTitleView(
                  title: '设备号：',
                  subTitle: '76568766767565',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextTitleView extends StatelessWidget {
  final TextStyle _subTextStyle = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  final double top;
  final double bottom;
  final double left;
  final double right;
  final String title;
  final String subTitle;
  TextTitleView({
    this.title = '',
    this.subTitle = '',
    this.top = 10.0,
    this.bottom = 10.0,
    this.left = 15.0,
    this.right = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding:
          EdgeInsets.only(top: top, bottom: bottom, right: right, left: left),
      child: Text(
        '$title: $subTitle',
        style: _subTextStyle,
      ),
    );
  }
}
