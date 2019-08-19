import 'package:flutter/material.dart';


const textStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  IconContent(
    {@required this.icon, @required this.text}
  )

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}