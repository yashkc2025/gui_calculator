import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Color n;
  final Color t;
  final VoidCallback onPress;
  const Buttons(
      {Key? key,
      required this.title,
      required this.n,
      required this.t,
      required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
        child: InkWell(
          highlightColor: t,
          splashColor: t,
          radius: 100,
          borderRadius: BorderRadius.circular(40),
          onTap: onPress,
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child:
                      Text(title, style: TextStyle(color: t, fontSize: 25)))),
        ),
      ),
    );
  }
}

class SecButtons extends StatelessWidget {
  final String title;
  final Color n;
  final Color t;
  final VoidCallback onPress;
  const SecButtons(
      {Key? key,
      required this.title,
      required this.n,
      required this.t,
      required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 6, right: 11, left: 11, bottom: 8),
        child: InkWell(
          highlightColor: t,
          splashColor: t,
          radius: 100,
          borderRadius: BorderRadius.circular(40),
          onTap: onPress,
          child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: n,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: t,
                          fontSize: 25)))),
        ),
      ),
    );
  }
}
