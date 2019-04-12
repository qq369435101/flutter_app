import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form Demo"),
      ),
      body: Theme(
          data: ThemeData(
            primaryColor: Theme.of(context).primaryColor,
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterFormDemo(),
              ],
            ),
          )),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).accentColor);
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  //销毁时调用函数
  @override
  void dispose() {
    // TODO: implement dispose
    //资源回收
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      //添加控制器
      controller: textEditingController,
//      //文本发生变化时
//      onChanged: (value) {
//        debugPrint('$value');
//      },
      //点击完成按钮
      onSubmitted: (value) {
        debugPrint('$value');
      },
      //decoration:装饰
      decoration: InputDecoration(
          //在前面添加图标
          icon: Icon(Icons.phone_iphone),
          //文本框上面会出现标题
          labelText: 'phone',
          //提示
          hintText: 'plase enter you phone number',
          //边界线
          border:
              //无底部边界
//              InputBorder.none
              OutlineInputBorder(),
          //是否有背景
          filled: true,
          //背景颜色
          fillColor: Colors.yellow),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final registerFormDemoState = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;

  void submitRegisterForm() {
    if (registerFormDemoState.currentState.validate()) {
      registerFormDemoState.currentState.save();
      debugPrint('username:$username');
      debugPrint('password:$password');
      //验证通过显示SnackBar
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Register..")));
    } else {
      //更新ui状态
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validatorUsername(value) {
    if (value.isEmpty) {
      return 'Username is empty';
    } else {
      return null;
    }
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return 'Password is empty';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormDemoState,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: validatorUsername,
            autovalidate: autoValidate,
            onSaved: (value) {
              username = value;
            },
            decoration: InputDecoration(
                helperText: '',
                labelText: 'Username',
                icon: Icon(Icons.person)),
          ),
          TextFormField(
            //校验是否错误
            validator: validatorPassword,
            //自动验证（每次内容变化都会验证）
            autovalidate: autoValidate,
            onSaved: (value) {
              password = value;
            },
            //会隐藏输入内容
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
                //提示信息
                helperText: ''),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
                color: Colors.pink,
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0,
                onPressed: submitRegisterForm),
          )
        ],
      ),
    );
  }
}
