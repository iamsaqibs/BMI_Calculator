import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/resources/constants.dart' as constants;
import 'package:bmi_calculator/components/bottomButton.dart';

class ResultsPage extends StatelessWidget {

  final String bmi;
  final String result;
  final String interpretation;

  ResultsPage({@required this.bmi, @required this.interpretation, @required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: constants.yourResult,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(
              color: constants.activeReusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    this.result.toUpperCase(),
                    style: constants.resultText,
                  ),
                  Text(
                    this.bmi,
                    style:constants.bmiText,
                  ),
//                  Text(
//                    'Normal BMI Range',
//                  ),
                  Text(
                    this.interpretation,
                    style: constants.remarks,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ),
          ),

          BottomButton(text: 'RECALCULATE YOUR BMI', navigate: (){
            Navigator.pop(context);
          },),
        ],
      ),
      backgroundColor: constants.primaryColor,
    );
  }
}