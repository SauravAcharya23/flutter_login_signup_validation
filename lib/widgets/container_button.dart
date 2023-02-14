import 'package:flutter/material.dart';

Widget containerButton(BuildContext context, String buttonName){
  return Container(
    height: MediaQuery.of(context).size.height * .06,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      //color: Colors.orange.shade800
      //color: Colors.deepPurple
      gradient: const LinearGradient(
        colors: [Colors.red, Colors.orange],
        //begin: Alignment.topLeft,
        //end: Alignment.bottomRight
      )
    ),
    alignment: Alignment.center,
    child: Text(buttonName, style: const TextStyle(fontSize: 19, color: Colors.white, letterSpacing: 0.4),),
  );
}