import 'package:flutter/material.dart';

Widget loginUpperText(String upperTextLogin){
  return  Text(
    upperTextLogin, 
    style: TextStyle(
      fontSize: 26, 
      letterSpacing: 0.5, 
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.wavy,
      foreground: Paint()..shader = const LinearGradient(
        colors: <Color>[Colors.red,Colors.orange]
      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
    ),
    textScaleFactor: 1.0,   
    strutStyle: const StrutStyle(leading: 2.0,),           
  );
}

Widget loginLowerText(String lowerTextLogin){
  return Text(
    lowerTextLogin,
    style: TextStyle(
      fontSize: 16.0,
      wordSpacing: 2.0,
      fontWeight: FontWeight.w500,
      foreground: Paint()..shader = const LinearGradient(
        colors: <Color>[Colors.red, Colors.orange]
      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
    ),
  );
}