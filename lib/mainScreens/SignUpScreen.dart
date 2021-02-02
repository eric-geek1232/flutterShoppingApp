import 'package:flutter/material.dart';
import 'package:project_with_flutter/mainScreens/WelcomeScreen.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/BackButton01.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/LoginButton.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/SignUP_SignIn.dart';
import 'package:project_with_flutter/Wigets/Components/Containers/Clipper01.dart';
import 'package:project_with_flutter/Wigets/Components/fields/FormFields.dart';
import 'package:project_with_flutter/Wigets/Design/WidgetDesign.dart';
import 'package:project_with_flutter/utils/AppText.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Widget _fieldsLogin(){
    return Column(
      children: [
        FormFields(
          title: AppText.NAME,
          isPassword: false,
        ),
        FormFields(
          title: AppText.EMAIL_ID,
          isPassword: false,
        ),
        FormFields(
          title: AppText.PASSWORD, 
          isPassword: true
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: EdgeInsets.only(top: height * .2),
                      child: WidgetDesign.titleCustomDark(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .05),
                      child: _fieldsLogin(),
                    ),
                    LoginButton(
                      title: AppText.SIGNUP,
                      colorText: Colors.white,
                      colorButtonBackground: Theme.of(context).primaryColor,
                    ),
                    SignUp_SignInLabel(
                      label: AppText.I_HAVE_ACCOUNT,
                      text: AppText.LOGIN
                    )
                  ]
                ),
              ),
            ),
            Clipper01(),
            Positioned(top: height * .025, child: BackButton01())
          ],
        ),
      ),
    );
  }
}

class _fieldsLogin {
}