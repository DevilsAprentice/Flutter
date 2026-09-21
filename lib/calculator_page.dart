import 'package:flutter/material.dart';

import 'component/custom_button.dart';
import 'component/custom_textfield.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController txtA1 = TextEditingController();
  TextEditingController txtA2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'A1',
              txtController: txtA1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'A2',
              txtController: txtA2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    print('Calculate button pressed');
                  },
                  text: '+',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    print('Calculate button pressed');
                  },
                  text: '-',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    print('Calculate button pressed');
                  },
                  text: 'x',
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: CustomButton(
                  onPressed: () {
                    print('Calculate button pressed');
                  },
                  text: '/',
                ),
              ),
            ],
          ),
          Text(
            "Result: ",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}