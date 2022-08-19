import 'package:flutter/material.dart';
import 'package:flutter_application_2/base/BaseWidget.dart';

// ignore: must_be_immutable
class MyWrap extends BaseStateLessWidget {
  static const String routeName = "/page5";

  @override
  String appBarTitle = "Wrap組件";

  @override
  Widget buildBody() {
    onPressed() => {print("pressed!")};
    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              shadowColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              "確定",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
