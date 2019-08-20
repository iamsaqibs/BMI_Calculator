import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as constants;
import 'bottomButton.dart';

class ResultsPage extends StatelessWidget {
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
                    'Normal',
                    style: constants.resultText,
                  ),
                  Text(
                    '22.1',
                    style:constants.bmiText,
                  ),
//                  Text(
//                    'Normal BMI Range',
//                  ),
                  Text(
                    'You have normanl body weight. good job',
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