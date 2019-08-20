import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/resultsPage.dart';


class BottomButton extends StatelessWidget {
  final String text;
  final Function navigate;
  BottomButton({@required this.text, @required this.navigate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigate();
      },
      child: Container(
        color: bottomButtonColor,
        height: 50.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
