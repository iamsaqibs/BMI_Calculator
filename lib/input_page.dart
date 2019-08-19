import 'package:flutter/material.dart';
import 'reusableCard.dart';

const reusableCardColor = Color(0xFF1D1E33);
const bottomButtonColor = Color(0xFFEA1556);

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
                  child: ReusableCard(color: reusableCardColor,),
                ),
                Expanded(child: ReusableCard(color: reusableCardColor)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: reusableCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: reusableCardColor)),
                Expanded(child: ReusableCard(color: reusableCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            height: 50.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}