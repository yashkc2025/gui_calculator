import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
              child: Text(
            'hey',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ))),
    );
  }
}
