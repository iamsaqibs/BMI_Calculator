import 'package:bmi_calculator/constants.dart' as constants;
import 'package:flutter/material.dart';
import 'input_page.dart';
// import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: constants.primaryColor,
        accentColor: constants.accentColor,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

