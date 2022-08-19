import 'package:flutter/material.dart';
import 'package:flutter_application_2/page1.dart';
import 'package:flutter_application_2/page2.dart';
import 'package:flutter_application_2/page3.list.dart' as page3;
import 'package:flutter_application_2/page4.stack.dart' as page4;
import 'package:flutter_application_2/page5.wrap.dart' as page5;
import 'package:flutter_application_2/widget/button.nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  _getRoutes() => {
        Page1.routeName: (context) => const Page1(),
        Page2.routeName: (context) => const Page2(),
        page3.MyList.routeName: (context) => const page3.MyList(),
        page4.MyStack.routeName: (context) => page4.MyStack(),
        page5.MyWrap.routeName: (context) => page5.MyWrap(),
      };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: _getRoutes());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const _BodyLayout(),
    );
  }
}

/// 抽取body
class _BodyLayout extends StatelessWidget {
  const _BodyLayout();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ButtonNav(
            text: '文字容器',
            block: () {
              Navigator.pushNamed(context, Page1.routeName);
            },
          ),
          ButtonNav(
            text: '图片控件',
            block: () {
              Navigator.pushNamed(context, Page2.routeName);
            },
          ),
          ButtonNav(
            text: '列表控件',
            block: () {
              Navigator.pushNamed(context, page3.MyList.routeName);
            },
          ),
          ButtonNav(
            text: 'Stack層疊控件',
            block: () {
              Navigator.pushNamed(context, page4.MyStack.routeName);
            },
          ),
          ButtonNav(
            text: 'Wrap可換行組件',
            block: () {
              Navigator.pushNamed(context, page5.MyWrap.routeName);
            },
          ),
        ],
      ),
    );
  }
}
