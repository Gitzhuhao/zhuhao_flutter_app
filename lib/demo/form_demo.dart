import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        //  data: ThemeData(
        //    primaryColor: Colors.black
        //  ),
        data: Theme.of(context).copyWith(primaryColor: Colors.blue),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              FormStateDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class FormStateDemo extends StatefulWidget {
  @override
  _FormStateDemoState createState() => _FormStateDemoState();
}

class _FormStateDemoState extends State<FormStateDemo> {
  String userName, password;
  bool _autovalidate = false;
  final registerFormKey = GlobalKey<FormState>();

  void saveSubmitStateFormData() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('userName:$userName');
      debugPrint('password:$password');

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('注册中...'),
          backgroundColor: Colors.blue,
        )
      );
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  String userNameValidator(value) {
    if (value.isEmpty) {
      return '用户名不能为空！';
    } else {
      return null;
    }
  }

  String passWordValidator(value) {
    if (value.isEmpty) {
      return '密码不能为空！';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: '用户名',
              helperText: '',
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: userNameValidator,
            autovalidate: _autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: passWordValidator,
            autovalidate: _autovalidate,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
              color: Colors.blue,
              child: Text('register',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              onPressed: saveSubmitStateFormData,
              elevation: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'zzx';
    textEditingController.addListener(() {
      debugPrint('执行方法:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: textEditingController,
        // onChanged: (value){
        //   debugPrint('onchanged:$value');
        // },
        onSubmitted: (value) {
          debugPrint('onSubmitted:$value');
        },
        decoration: InputDecoration(
          icon: Icon(Icons.subject),
          fillColor: Colors.grey[200],
          hintText: '请输入用户名',
          labelText: 'title',
          filled: true,
          border: InputBorder.none,
          // border: OutlineInputBorder()
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).accentColor);
  }
}


