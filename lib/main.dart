import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.black,
      home: InputPage(),
      // initialRoute: '/',
      routes: {
        // '/':(context)=> InputPage(),
        '/result':(context)=> ResultsPage(BmiHintResult: "",BmiResult: "",BmiTitleResult: ""),
      },
    );
  }
}

