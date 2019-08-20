import 'dart:math';

class BMIController {
  BMIController({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;

  String calculateBMI(){
    bmi = this.weight / pow(this.height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi >= 25){
      return 'Overweight';
    } else if (bmi < 25 && bmi >= 18.5){
      return 'Normal';
    } else if (bmi < 18.5 && bmi >= 16){
      return 'Underweight';
    } else if (bmi < 16 && bmi >= 15){
      return 'Severely underweight.';
    } else if (bmi < 15 ){
      return 'Very severely underweight	';
    } else {
      return 'You\'re dead already';
    }
  }

  String getInterpretation(){
    if(bmi >= 25){
      return 'You\'re Overweight! Do you even lift bruh?';
    } else if (bmi < 25 && bmi >= 18.5){
      return 'You\'re Normal. Stop putting your simptoms on google!';
    } else if (bmi < 18.5 && bmi >= 16){
      return 'You\'re Underweight! GO TO YOUR GRANDMA!';
    } else if (bmi < 16 && bmi >= 15){
      return 'You\'re Severely Underweight! You the slimest person alive?';
    } else if (bmi < 15 ){
      return 'You\'re Very SEVERELY Underweight! Go to your nutritionist you dumbass!';
    } else {
      return 'You\'re dead already';
    }
  }
}