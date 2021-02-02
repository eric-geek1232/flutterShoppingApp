import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  String title;
  Color colorText;
  Color colorButtonBackground;
  Widget widgetToNavite;

  LoginButton({this.title, this.colorText, this.colorButtonBackground, this.widgetToNavite});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 25),
      width: double.infinity,
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> widgetToNavite));
        },
        elevation: 5,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: colorButtonBackground,
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )
      )
    );
  }
}