import 'dart:ui';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {


  final bool isUnderline;
  final String text;
  final FontWeight fontWeight;
  final String fontFamily;
  final double textScale;
  final Color textColor;
  final TextAlign textAlign;
  TextWidget(this.text, this.isUnderline ,this.fontWeight , this.textScale,this.textColor,this.textAlign,this.fontFamily );


  @override
  Widget build(BuildContext context) {
    return Text(text,
      textScaleFactor: textScale,
      textAlign: textAlign,

      style: TextStyle(
        decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
        fontWeight: fontWeight,
        color: textColor,
        fontFamily: fontFamily

// height: 1.5


      ),);
  }
}