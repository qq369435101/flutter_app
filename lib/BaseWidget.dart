import 'package:flutter/material.dart';

class BaseWidgetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerDemo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle =
      TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic);
  final String _author = "李白";
  final String _title = "将进酒";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《$_author》--$_title \n 君不见，黄河之水天上来，奔流到海不复回。\n 君不见，高堂明镜悲白发，朝如青丝暮成雪。 \n 人生得意须尽欢，莫使金樽空对月。\n天生我材必有用，千金散尽还复来。 \n烹羊宰牛且为乐，会须一饮三百杯。 \n岑夫子，丹丘生，将进酒，杯莫停。\n与君歌一曲，请君为我倾耳听。 \n钟鼓馔玉不足贵，但愿长醉不复醒。 \n古来圣贤皆寂寞，惟有饮者留其名。\n陈王昔时宴平乐，斗酒十千恣欢谑。 \n  主人何为言少钱，径须沽取对君酌。 \n五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。 ",
      //对齐方式
      textAlign: TextAlign.center,
      //字体样式
      style: _textStyle,
      //最大行数
      maxLines: 100,
      //完结最后又省略号
      overflow: TextOverflow.ellipsis,
    );
  }
}

//富文本Demo
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: "鱼鱼鱼",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            //文字的粗细
            fontWeight: FontWeight.w100,
          ),
          children: [
            //分开显示内容
            TextSpan(
                text: "Android",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w300)),
            TextSpan(
                text: "Java",
                style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.w300))
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  final BorderSide _borderSide =
      BorderSide(color: Colors.lightGreen, width: 3, style: BorderStyle.solid);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topCenter,
              //重复模式
              repeat: ImageRepeat.repeatY,
              //填充模式
              fit: BoxFit.cover,
              //滤镜
              colorFilter: ColorFilter.mode(Colors.pink, BlendMode.hardLight),
              image: NetworkImage(
                  "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1554803057&di=947a6549ddc2a9f9139c19482426ac02&src=http://pic.qiantucdn.com/58pic/25/71/62/5860ce4503444_1024.jpg!/fw/1024/watermark/url/L2ltYWdlcy93YXRlcm1hcmsvZGF0dS5wbmc=/repeat/true"))),
      //Row是横排显示的容器
      child: Row(
        //子控件居中
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Icon(
                Icons.cake,
                size: 32.0,
                color: Colors.white,
              ),
              padding:

//        分别设置padding    EdgeInsets.only(left: 14.0,top: 8.0,right: 14.0,bottom: 8.0)
                  //整体设置padding
                  EdgeInsets.all(9.0),
              margin: EdgeInsets.all(15.0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  //设置边框

                  border: Border.all(
                      color: Colors.lightGreen,
                      width: 3,
                      style: BorderStyle.solid),
                  //分别设置边框
//                      Border(
//                          top: _borderSide,
//                          bottom: _borderSide,
//                          left: _borderSide,
//                          right: _borderSide)
                  borderRadius:
                      //设置全部圆角
//                  BorderRadius.circular(15.0)
//        BorderRadius.all(Radius.circular(5.0))
                      //分别设置圆角
                      BorderRadius.only(
                          topLeft: Radius.circular(11.0),
                          bottomRight: Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                        //偏移量
                        offset: Offset(0, 16),
                        //阴影颜色
                        color: Colors.blue,
                        //模糊程度
                        blurRadius: 25,
                        //扩散程度
                        spreadRadius: -9.0)
                  ]
                  //设置盒子形状  使用圆形盒子不能使用圆角
                  ,
                  shape: BoxShape.rectangle,
                  gradient:
                      //线性渐变
                      LinearGradient(
                          colors: [Colors.lightGreen, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)
                  //径向渐变
//                      RadialGradient(colors: [Colors.lightGreen, Colors.pink])
                  ))
        ],
      ),
    );
  }
}
