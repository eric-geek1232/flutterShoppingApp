import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:project_with_flutter/Wigets/Design/WidgetDesign.dart';

class Clipper01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          height: MediaQuery.of(context).size.height *.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: WidgetDesign.linearGradient(context)),
        ),
      ),
    );
  }
}