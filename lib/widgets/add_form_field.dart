import 'package:flutter/material.dart';


Widget addFormField({String? hintText, String? labelText, validController, String? Function(String?)? validator, required bool obscureText}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: validController,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.orange)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.orange)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.orange)
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.orange.shade800),
      ),
      validator: validator
    ),
  );
}