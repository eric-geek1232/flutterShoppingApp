import 'package:flutter/material.dart';

class SignUp_SignInLabel extends StatelessWidget {
  final String label;
  final String text;
  final Widget widgetToNavite;

  SignUp_SignInLabel({this.label, this.text, this.widgetToNavite});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: GestureDetector(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}