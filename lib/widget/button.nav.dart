import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({Key? key, required this.text, required this.block})
      : super(key: key);

  final String text;
  final Function block;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          // padding
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          // 高宽
          minimumSize: const Size(100, 40),
        ),
        onPressed: () => block.call(),
        child: Text(text));
  }
}
