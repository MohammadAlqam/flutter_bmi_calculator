import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;
  double bmi=0;


  String calculateBMI(){
    bmi = (weight / pow(height/100, 2));
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    bmi = (weight / pow(height/100, 2));
    if(bmi >= 25){
      return 'Overweight';
    }else if(bmi <= 18.5){
      return 'Underweight';
    }else{
      return 'Normal';
    }
  }

  String getInterpretation(){
    bmi = (weight / pow(height/100, 2));
    if(bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(bmi <= 18.5){
      return 'You have a lower than normal body weight. You can eat a bit more. ';
    }else{
      return 'You have a normal body weight. Good job!';
    }
  }
}