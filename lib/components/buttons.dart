import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Color n;
  final Color t;

  const Buttons(
      {Key? key, required this.title, required this.n, required this.t})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 60,
          decoration: BoxDecoration(shape: BoxShape.circle, color: n),
          child: Center(
              child: Text(title, style: TextStyle(color: t, fontSize: 25)))),
    );
  }
}
