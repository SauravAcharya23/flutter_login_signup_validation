import 'package:auth_firebase/screens/forgot_password_screen.dart';
import 'package:flutter/material.dart';

Widget forgetPassword(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: MediaQuery.of(context).size.height * .035,
      alignment: Alignment.bottomRight,
      child: GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordScreen(),));}, child: const Text('Forgot Password?')),
    ),
  );
}