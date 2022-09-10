import 'package:flutter/material.dart';
import 'package:gui_calc/components/buttons.dart';
import 'package:gui_calc/constants.dart';
import 'package:math_expressions/math_expressions.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        userInput.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text(
                        ans.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttons(
                            title: 'AC',
                            n: func,
                            t: func_text,
                            onPress: () {
                              userInput = ' ';
                              ans = '';
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '+',
                            n: op,
                            t: op_text,
                            onPress: () {
                              userInput += " + ";
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
                            title: '4',
                            n: num,
                            t: num_text,
                            onPress: () {
                              userInput += '4';
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
                            onPress: () {},
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
                            title: 'DEL',
                            n: func,
                            t: func_text,
                            onPress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            },
                          ),
                          Buttons(
                            title: '=',
                            n: func,
                            t: func_text,
                            onPress: () {
                              equalPress();
                              setState(() {});
                            },
                          ),
                        ],
                      )
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
