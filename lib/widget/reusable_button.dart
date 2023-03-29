import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecycleButton extends StatelessWidget {


  const RecycleButton({
    super.key, required this.press
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFF5200),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: const Padding(
          padding:
          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            'Submit',
            style: TextStyle(fontSize: 16),
          ),
        ));
  }
}

