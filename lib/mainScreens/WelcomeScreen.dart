import 'package:flutter/material.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/LoginButton.dart';
import 'package:project_with_flutter/Wigets/Design/WidgetDesign.dart';
import 'package:project_with_flutter/mainScreens/LoginScreen.dart';
import 'package:project_with_flutter/mainScreens/SignUpScreen.dart';
import 'package:project_with_flutter/utils/AppText.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: WidgetDesign.linearGradient(context)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetDesign.titleCustom(),
                LoginButton(
                  title: AppText.LOGIN,
                  colorText: Theme.of(context).primaryColor,
                  colorButtonBackground: Colors.white,
                  widgetToNavite: LoginScreen() 
                ),
                _sigUpButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _sigUpButton(BuildContext context){
  return Container(
    width: double.infinity,
    child: OutlineButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Text(
        AppText.SIGNUP,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      )
    )
  );
}