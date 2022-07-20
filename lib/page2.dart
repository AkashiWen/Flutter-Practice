import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/base/BaseWidget.dart';

/// Image组件
class Page2 extends BaseStateLessWidget {
  @override
  Widget build(BuildContext context) {
    return const ImagePage();
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {}
}
