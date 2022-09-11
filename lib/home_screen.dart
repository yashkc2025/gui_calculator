import 'package:flutter/material.dart';
import 'package:calculator/components/buttons.dart';
import 'package:calculator/constants.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var ans = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        // border: Border.,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          userInput.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          ans.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SecButtons(
                            title: 'AC',
                            n: bg,
                            t: func,
                            onPress: () {
                              userInput = ' ';
                              ans = '';
                              setState(() {});
                            },
                          ),
                          SecButtons(
                            title: '( ',
                            n: sec,
                            t: sec_text,
                            onPress: () {
                              userInput += "(";
                              setState(() {});
                            },
                          ),
                          SecButtons(
                            title: ' )',
                            n: sec,
                            t: sec_text,
                            onPress: () {
                              userInput += ")";
                              setState(() {});
                            },
                          ),
                          SecButtons(
                            title: '←',
                            n: sec,
                            t: func,
                            onPress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Buttons(
                            title: 'π',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput = ' 3.1415 ';
                              ans = '';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '^',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += " ^ ";
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '%',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += " % ";
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '/',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += " / ";
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttons(
                            title: '7',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '7';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '8',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '8';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '9',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '9';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: ' * ',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += ' * ';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttons(
                            title: '4',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '4';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '5',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '5';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '6',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '6';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '-',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += ' - ';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttons(
                            title: '1',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '1';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '2',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '2';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '3',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '3';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '+',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += ' + ';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttons(
                            title: '0',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '0';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '.',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += '.';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: 'x²',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += ' ^2';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '=',
                            // n: Color.fromARGB(255, 149, 253, 154),
                            n: sec_text,
                            t: func_text,
                            onPress: () {
                              equalPress();
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 40,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    ans = "= $eval";
  }
}
