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
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: InkWell(
          focusColor: Colors.black,
          onTap: onPress,
          child: Container(
              height: 70,
              decoration: BoxDecoration(shape: BoxShape.circle, color: n),
              child: Center(
                  child:
                      Text(title, style: TextStyle(color: t, fontSize: 25)))),
        ),
      ),
    );
  }
}
