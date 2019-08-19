import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFFEA1556),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

