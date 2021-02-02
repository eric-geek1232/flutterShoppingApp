import 'package:flutter/material.dart';
import 'package:project_with_flutter/utils/AppText.dart';

class BackButton01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: ()=>{
        Navigator.pop(context)
      },
      child: Row(
        children: [
          Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white
          ),
          Text(
            AppText.BACK,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}