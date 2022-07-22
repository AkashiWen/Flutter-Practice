import 'package:flutter/material.dart';
import 'package:flutter_application_2/base/BaseWidget.dart';
import 'package:flutter_application_2/widget/common_widget.dart';

/// Image组件
class Page2 extends BaseStateLessWidget {
  static const routeName = '/page2';

  const Page2({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar('Image', context),
      body: const _BodyLayout(),
    );
  }
}

class _BodyLayout extends StatelessWidget {
  const _BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        // 宽度match_paretn 高度wrap_content
        mainAxisSize: MainAxisSize.max,
        children: [
          // Image 加载网图
          Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              // 利用ClipOval裁剪成圆形
              child: ClipOval(
                child: Image.network(
                  'https://i0.hdslb.com/bfs/new_dyn/4a449b30229b3128071e9b4b7ce2bfea401742377.png@1036w.webp',
                  // 图片位置
                  alignment: Alignment.topCenter,
                  // 图片显示，相当于Android的scaleType
                  fit: BoxFit.cover, // cover 充满容器且不变形。最常用
                  // 图片混合颜色 color& colorBendMode配合使用
                  color: Colors.blue,
                  colorBlendMode: BlendMode.screen,
                  // 重复摆放
                  repeat: ImageRepeat.repeatX,
                ),
              )),
          // 加载本地图片
          // 需要添加images/目录，以及去pubspec.yaml中添加asset配置
          Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Image.asset(
              'images/2.0x/sample.jpg',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
