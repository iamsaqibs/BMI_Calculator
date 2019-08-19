import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleActiveColor = inActiveReusableCardColor;
  Color femaleActiveColor = activeReusableCardColor;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //First Row
          Expanded(
            child: Row(
              children: <Widget>[
                //Male Icon Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleActiveColor = activeReusableCardColor;
                        femaleActiveColor = inActiveReusableCardColor;
                      });
                    },
                    child: ReusableCard(
                      color: maleActiveColor,
                      cardChild: IconContent(icon: maleIcon, text: male),
                    ),
                  ),
                ),
                //Male Card End

                //Female Icon Card
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleActiveColor = inActiveReusableCardColor;
                        femaleActiveColor = activeReusableCardColor;
                      });
                    },
                    child: ReusableCard(
                      color: femaleActiveColor,
                      cardChild: IconContent(
                        icon: femaleIcon,
                        text: female,
                      ),
                    ),
                  ),
                ),
                //Female Card End
              ],
            ),
          ),
          //First Row Ending

          //Second Row Starting
          Expanded(
            child: ReusableCard(
              color: activeReusableCardColor,
              cardChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: textStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: heightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: textStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220,
                    activeColor: Color(0xFFEA1556),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newHeight){
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          //Second Row Ending

          //Third Row Starting
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
              ],
            ),
          ),
          //Third Row Ending

          //Fourth Row Starting
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
          ),
          //Fourth Row Ending
        ],
      ),
    );
  }
}