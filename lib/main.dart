import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const GuiCalculator());
}

class GuiCalculator extends StatelessWidget {
  const GuiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
