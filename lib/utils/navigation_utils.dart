import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void finish(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  } else {
    SystemNavigator.pop();
  }
}
