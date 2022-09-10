import 'package:flutter/material.dart';
import 'package:gui_calc/components/buttons.dart';
import 'package:gui_calc/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Buttons(title: 'AC', n: func, t: func_text),
                    Buttons(title: '+/-', n: op, t: op_text),
                    Buttons(title: '%', n: op, t: op_text),
                    Buttons(title: '/', n: op, t: op_text),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
