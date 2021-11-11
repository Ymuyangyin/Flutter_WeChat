import 'package:flutter/material.dart';
import 'package:flutter_weixin/Main/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeChat',//安卓title

      theme: ThemeData(
        highlightColor:const Color.fromRGBO(1, 1, 1, 0),//点击高亮色
        splashColor:const Color.fromRGBO(1, 1, 1, 0),//点击恢复色
        primarySwatch: Colors.grey,//主题色 全局
      ),
      home:RootPage(),
    );
  }
}

