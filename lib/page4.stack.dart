import 'package:flutter/material.dart';
import 'package:flutter_application_2/base/BaseWidget.dart';

// ignore: must_be_immutable
/// Stack與Align、Stack與positioned實現定位佈局
/// 1、Stack和Align
///   - Align可以自己控制在父控件中的位置
/// 2、Stack和Positioned
class MyStack extends BaseStateLessWidget {
  MyStack({Key? key}) : super(key: key);

  static const String routeName = '/page4';

  @override
  String appBarTitle = "Stack層疊組件";

  @override
  Widget buildBody() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 藍色塊
          _buildEasyStackAlignment(),
          // Stack和Algin控件一起
          _buildStackWithAlign(),
          // Stack和Positioned一起
          _buildStackWithPositioned()
        ],
      ),
    );
  }

  Container _buildStackWithPositioned() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.green,
      child: Stack(
        children: const [
          Positioned(left: 20, top: 20, child: Text("left20,top20")),
          Positioned(right: 20, bottom: 20, child: Text("right20,bottom20")),
        ],
      ),
    );
  }

  /// 此時光用Aligment是不夠的，需要用Align和Positioned
  Container _buildStackWithAlign() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.red,
      child: Stack(
        // alignment: Alignment.center,
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, 0),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment(0.5, 0),
            child: Icon(
              Icons.send,
              size: 60,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildEasyStackAlignment() {
    return Stack(
      // Alignment的中心是(0,0)，x軸右邊1，y軸下邊1
      alignment: const Alignment(-1, -1),
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
        ),
        Text("data"),
      ],
    );
  }
}
