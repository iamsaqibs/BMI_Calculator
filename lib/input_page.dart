import 'package:flutter/material.dart';
import 'reusableCard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}