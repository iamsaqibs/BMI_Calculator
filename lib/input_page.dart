import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';

const activeReusableCardColor = Color(0xFF1D1E33);
const inActiveReusableCardColor = Color(0xFF111328);
const bottomButtonColor = Color(0xFFEA1556);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const String male = 'Male';
const String female = 'Female';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleActiveColor = inActiveReusableCardColor;
  Color femaleActiveColor = activeReusableCardColor;

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
                  child: GestureDetector(
                    onTap: (){
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
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      maleActiveColor = inActiveReusableCardColor;
                      femaleActiveColor = activeReusableCardColor;
                    });
                  },
                  child: ReusableCard(
                    color: femaleActiveColor,
                    cardChild: IconContent(icon: femaleIcon, text: female,),
                    ),
                ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeReusableCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
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