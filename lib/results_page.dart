import 'package:bmi/Reusable_Card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/Constatnts.dart';
import 'package:bmi/Reusable_Card.dart';
import 'main.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.BmiTitleResult,required this.BmiResult,required this.BmiHintResult});

  final String BmiTitleResult;
  final String BmiResult;
  final String BmiHintResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: KTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: itemColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(BmiTitleResult, style: KResultTextStyle),
                  Text(BmiResult,style: KBMITextStyle,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                      child: Text(BmiHintResult,style: KHintResultTextStyle,textAlign: TextAlign.center,)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              color: buttonColor,
              height: 70.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Re - Calculate',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
