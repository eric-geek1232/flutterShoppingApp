import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/BackButton01.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/LoginButton.dart';
import 'package:project_with_flutter/Wigets/Components/Buttons/SignUP_SignIn.dart';
import 'package:project_with_flutter/Wigets/Components/Containers/Clipper01.dart';
import 'package:project_with_flutter/Wigets/Components/fields/FormFields.dart';
import 'package:project_with_flutter/Wigets/Design/WidgetDesign.dart';
import 'package:project_with_flutter/utils/AppText.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget _fieldsLogin(){
    return Column(
      children: [
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

  Widget _forgotText() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: ()=>{},
        child: Text(
          AppText.FORGOT_PASSWORD,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }

  Widget _dividerOrDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1
              ),
            ),
          ),
          Text(
            AppText.OR,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black54
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1
              ),
            ),
          )
        ]
      ),
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
                      title: AppText.LOGIN,
                      colorText: Colors.white,
                      colorButtonBackground: Theme.of(context).primaryColor,
                      widgetToNavite: LoginScreen() 
                    ),
                    _forgotText(),
                    _dividerOrDivider(),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      child: GoogleSignInButton(
                        centered: true,
                        borderRadius: 5,
                        onPressed: ()=>{},
                        darkMode: false,
                        text: AppText.GOOGLE_SIGN,
                      ),
                    ),
                    SignUp_SignInLabel(
                      label: AppText.DONT_HAVE_ACCOUNT,
                      text: AppText.SIGNUP
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