import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/common_widget.dart';

// ignore: must_be_immutable
abstract class BaseStateLessWidget extends StatelessWidget {
  BaseStateLessWidget({Key? key}) : super(key: key);

  abstract String appBarTitle;

  /// 子類去實現
  Widget buildBody();

  @override
  Widget build(BuildContext context) {
    return _buildPage(context);
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle, context),
      body: buildBody(),
    );
  }
}
