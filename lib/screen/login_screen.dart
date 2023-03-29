import 'package:flutter/material.dart';

import '../model/app_detail.dart';
import '../widget/reusable_button.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/orange.png'),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Login',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xffFF5200)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            cursorColor: const Color(0xffFF5200),
            decoration: const InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(color: Color(0xffFF5200)),
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Color(0xffFF5200))),
                floatingLabelStyle: TextStyle(color: Color(0xffFF5200)),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(width: 2, color: Color(0xffFF5200)),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            cursorColor: const Color(0xffFF5200),
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Color(0xffFF5200)),
                focusedBorder: const UnderlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: Color(0xffFF5200))),
                floatingLabelStyle: TextStyle(color: Color(0xffFF5200)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color(0xffFF5200)),
                )),

          ),
        ),
        const SizedBox(
          height: 30,
        ),
        RecycleButton(press: () {
          AppDetail.currentpageNotifier.value++;
        })
      ],
    );
  }
}
