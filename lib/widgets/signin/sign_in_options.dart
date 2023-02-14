import 'package:flutter/material.dart';

Widget signInOptions(BuildContext context,String imagePath, String text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 30.0,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * .04,),
          Text(text,style: const TextStyle(fontSize: 16.0),)
        ],
      ),
    ),
  );
}