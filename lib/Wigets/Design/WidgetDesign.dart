import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetDesign{
  static LinearGradient linearGradient(BuildContext context) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Theme.of(context).primaryColorLight,
        Theme.of(context).primaryColor
      ]
    );
  }

  static RichText titleCustom() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Shopping',
        style: GoogleFonts.portLligatSans(
          fontSize: 30, 
          fontWeight: FontWeight.w700,
          color: Colors.white38,
        ),
        children: [
          TextSpan(
            text: 'list',
            style: TextStyle(color: Colors.white, fontSize: 30)
          )
        ]
      ),
    );
  } 

  static RichText titleCustomDark(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Shopping',
        style: GoogleFonts.portLligatSans(
          fontSize: 30, 
          fontWeight: FontWeight.w700,
          color: Colors.grey,
        ),
        children: [
          TextSpan(
            text: 'list',
            style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30)
          )
        ]
      ),
    );
  } 
}