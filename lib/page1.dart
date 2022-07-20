import 'package:flutter/material.dart';
import 'package:flutter_application_2/base/BaseWidget.dart';
import 'package:flutter_application_2/utils/common_widget.dart';

/// Container组件、Text组件
class Page1 extends BaseStateLessWidget {
  const Page1({Key? key}) : super(key: key);

  static const routeName = '/page1';

  @override
  Widget build(BuildContext context) {
    // 不是主界面，不必再创建MaterialApp，只需要返回Scaffold即可
    return const SecondPageHome(title: 'title');
  }
}

class SecondPageHome extends StatefulWidget {
  const SecondPageHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(widget.title, context),
      body: _BodyLayout(),
    );
  }
}

/// 抽取body
class _BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, // match_parent
      // 背景装饰
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.blue, width: 2.0),
        // 圆角
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      // padding
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
      // margin
      margin: const EdgeInsets.all(10),
      // Matrix4
      // transform: Matrix4.rotationZ(0.3),
      // 让文字在底部左侧
      alignment: Alignment.topLeft,
      child: const Text(
        'A Text, over flow over flow over flow over flow over flow over flow',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black38,
          fontWeight: FontWeight.bold,
          // 字间距
          letterSpacing: 1.0,
        ),
        overflow: TextOverflow.visible,
      ),
    );
  }
}
