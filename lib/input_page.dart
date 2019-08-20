import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'constants.dart';
import 'bottomButton.dart';
import 'roundedIconButton.dart';
import 'resultsPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleActiveColor = inActiveReusableCardColor;
  Color femaleActiveColor = activeReusableCardColor;
  int height = 180;
  int age = 10;
  int weight = 60;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:RoundSliderThumbShape(
                        enabledThumbRadius: 10.0
                      ),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEA1556),
                      overlayColor: Color(0x15EA1556)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220,
                      // activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Second Row Ending

          //Third Row Starting
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeReusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: textStyle,
                        ),

                        Text(
                          weight.toString(),
                          style: heightTextStyle,
                        ),
                        
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: RoundIconButton(
                                icon: minusIcon,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RoundIconButton(
                                icon: plusIcon,
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeReusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: textStyle,
                        ),

                        Text(
                          age.toString(),
                          style: heightTextStyle,
                        ),

                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: RoundIconButton(
                                icon: minusIcon,
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RoundIconButton(
                                icon: plusIcon,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Third Row Ending

          //Fourth Row Starting
          BottomButton(text: 'CALCULATE YOUR BMI', navigate: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(),));
          },),
          //Fourth Row Ending
        ],
      ),
    );
  }
}



