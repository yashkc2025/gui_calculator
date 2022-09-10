import 'package:flutter/material.dart';

void main() {
  runApp(const GuiCalculator());
}

class GuiCalculator extends StatefulWidget {
  const GuiCalculator({super.key});

  @override
  State<GuiCalculator> createState() => _GuiCalculatorState();
}

class _GuiCalculatorState extends State<GuiCalculator> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
