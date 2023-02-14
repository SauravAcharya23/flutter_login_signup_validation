import 'package:flutter/material.dart';

class ChooseGender extends StatefulWidget {
  const ChooseGender({super.key});

  @override
  State<ChooseGender> createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {

  String? groupValue;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Radio(
                toggleable: true,
                fillColor:MaterialStateColor.resolveWith((states) => Colors.orange),
                value: 'Male', 
                groupValue: groupValue, 
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Text('Male'),
            ],
          ),
                
          Row(
            children: [
              Radio(
                fillColor:MaterialStateColor.resolveWith((states) => Colors.orange),
                value: 'Female', 
                groupValue: groupValue, 
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Text('Female'),
            ],
          ),
          Row(
            children: [
              Radio(
                fillColor:MaterialStateColor.resolveWith((states) => Colors.orange),
                value: 'Other', 
                groupValue: groupValue, 
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Text('Other'),
            ],
          ),
        ],
      ),
    );
  }
}