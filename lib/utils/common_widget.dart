import 'package:flutter/material.dart';
import 'navigation_utils.dart';

/// 通用带返回的AppBar
class CommonAppBar extends AppBar {
  CommonAppBar(String title, BuildContext context, {Key? key})
      : super(
          key: key,
          title: Text(title),
          leading:
              BackButton(color: Colors.black, onPressed: () => finish(context)),
        );
}
