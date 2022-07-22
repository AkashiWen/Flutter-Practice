import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/common_widget.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);
  static const String routeName = '/page3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar('ListView', context),
      body: _BodyLayout(),
    );
  }
}

class _BodyLayout extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      Color color = i % 2 == 0 ? Colors.white : Colors.grey;
      list.add(ListTile(
        tileColor: color,
        leading: const Icon(Icons.settings),
        title: Text('list title $i'),
        subtitle: Text('sub title $i'),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: _getListData(),
    );
  }
}
