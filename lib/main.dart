import 'package:flutter/material.dart';
import 'package:project_with_flutter/mainScreens/WelcomeScreen.dart';
import 'package:project_with_flutter/Wigets/Design/WidgetDesign.dart';
import 'package:project_with_flutter/utils/AppConstants.dart';
import 'package:project_with_flutter/utils/AppText.dart';
import 'package:project_with_flutter/utils/SourceImages.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        accentColor: Color(0xff050028),
        primaryColorLight: Color(0xff57547c),
        primaryColorDark: Color(0xffedecee),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: AppConstants.SPLASH_SCREEN_DURATION,
      navigateAfterSeconds: WelcomeScreen(),
      image: SourceImages.ScreenIcon(),
      photoSize: 90,
      loaderColor: Theme.of(context).primaryColorDark,
      loadingText: Text(AppText.LOADING,
      style: TextStyle(color: Colors.white),),
      gradientBackground: WidgetDesign.linearGradient(context),
    );
  }
}
