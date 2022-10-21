import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextDecoration textDecoration;
  final Color decorationColor;
  final FontStyle fontStyle;
  final TextOverflow overflow;

  const TextNormal(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 12,
      this.textDecoration = TextDecoration.none,
      this.decorationColor = Colors.black,
      this.fontStyle = FontStyle.normal,
      this.overflow = TextOverflow.clip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: overflow,
        fontStyle: fontStyle,
        decoration: textDecoration,
        decorationColor: decorationColor,
        fontFamily: 'Thesadith',
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class TextBold extends StatelessWidget {
  final TextOverflow overflow;
  final String text;
  final Color color;
  final double fontSize;
  final TextDecoration textDecoration;
  final Color decorationColor;
  final FontStyle fontStyle;

  const TextBold(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 12,
      this.textDecoration = TextDecoration.none,
      this.decorationColor = Colors.black,
      this.overflow = TextOverflow.clip,
      this.fontStyle = FontStyle.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          overflow: overflow,
          fontStyle: fontStyle,
          decoration: textDecoration,
          decorationColor: decorationColor,
          fontFamily: 'Thesadith',
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontSize),
    );
  }
}
