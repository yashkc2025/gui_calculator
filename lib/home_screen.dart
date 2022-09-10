import 'package:flutter/material.dart';
import 'package:gui_calc/components/buttons.dart';
import 'package:gui_calc/constants.dart';

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
        backgroundColor: Color(0xffE9F8FF),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
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
                            onPress: () {},
                          ),
                          Buttons(
                            title: '+/-',
                            n: op,
                            t: op_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '%',
                            n: op,
                            t: op_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '/',
                            n: op,
                            t: op_text,
                            onPress: () {},
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
                            onPress: () {},
                          ),
                          Buttons(
                            title: '8',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '9',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: 'X',
                            n: op,
                            t: op_text,
                            onPress: () {},
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
                            onPress: () {},
                          ),
                          Buttons(
                            title: '5',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '6',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '-',
                            n: op,
                            t: op_text,
                            onPress: () {},
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
                            onPress: () {},
                          ),
                          Buttons(
                            title: '2',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '3',
                            n: num,
                            t: num_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '4',
                            n: num,
                            t: num_text,
                            onPress: () {},
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
                            onPress: () {},
                          ),
                          Buttons(
                            title: 'DEL',
                            n: func,
                            t: func_text,
                            onPress: () {},
                          ),
                          Buttons(
                            title: '=',
                            n: func,
                            t: func_text,
                            onPress: () {},
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
}
