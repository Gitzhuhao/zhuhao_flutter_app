import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: Colors.blue,
      fontStyle: FontStyle.italic);

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '《$_title》\n  --$_author \n君不见黄河之水天上来，奔流到海不复回。\n君不见高堂明镜悲白发，朝如青丝暮成雪。\n人生得意须尽欢，莫使金樽空对月。\n天生我材必有用，千金散尽还复来。\n烹羊宰牛且为乐，会须一饮三百杯。',
        style: _textStyle,
        textAlign: TextAlign.left,
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'zhuhao',
          style: TextStyle(fontSize: 30.0, color: Colors.blue),
          children: [
            TextSpan(
              text: '用户',
              style: TextStyle(fontSize: 12.0, color: Colors.blue),
            ),
          ]),
    );
  }
}

class TextDecrationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://resources.ninghao.org/images/the-old-fashioned.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.indigoAccent[400].withOpacity(0.2),
                BlendMode.hardLight
              )
              )
              ),
      // color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 50.0, color: Colors.blue),
            // color: Colors.yellow,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  // right: BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 2.0,
                  // ),
                ),
                // borderRadius: BorderRadius.circular(50.0),
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(16.0),
                // ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 10.0),
                      color: Color.fromRGBO(16, 20, 188, 0.8),
                      blurRadius: 20.0,
                      spreadRadius: -3.0)
                ],
                shape: BoxShape.circle,
                // gradient: RadialGradient(
                //   colors: [
                //     Color.fromRGBO(7, 102, 255, 1.0),
                //     Color.fromRGBO(3, 28, 128, 1.0),
                //   ],
                // )),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ],
      ),
    );
  }
}
