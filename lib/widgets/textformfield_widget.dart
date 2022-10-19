import 'package:flutter/material.dart';

class TextInputWithIcon extends StatelessWidget {
  final TextEditingController controller;
  final double fontSize;
  final Icon prefixIcon;
  final String hintText;
  final FontWeight fontWeight;
  final bool obscureText;
  final Color borderColor;

  const TextInputWithIcon(
      {Key? key,
      required this.controller,
      this.fontSize = 12,
      required this.prefixIcon,
      this.hintText = '',
      this.fontWeight = FontWeight.normal,
      this.obscureText = false,
      this.borderColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class TextInputWithoutIcon extends StatelessWidget {
  final TextEditingController controller;
  final double fontSize;
  final String hintText;
  final FontWeight fontWeight;
  final bool obscureText;
  final Color borderColor;

  const TextInputWithoutIcon(
      {Key? key,
      required this.controller,
      this.fontSize = 12,
      this.hintText = '',
      this.fontWeight = FontWeight.normal,
      this.obscureText = false,
      this.borderColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class TextInputWithSuffixIcon extends StatelessWidget {
  final TextEditingController controller;
  final double fontSize;
  final Icon suffixIcon;
  final String hintText;
  final FontWeight fontWeight;
  final bool obscureText;
  final Color borderColor;
  final bool enabled;
  final Color fillColor;

  const TextInputWithSuffixIcon({
    Key? key,
    required this.controller,
    this.fontSize = 12,
    required this.suffixIcon,
    this.hintText = '',
    this.fontWeight = FontWeight.normal,
    this.obscureText = false,
    this.borderColor = Colors.black,
    this.enabled = true,
    this.fillColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        /*enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: borderColor)),*/
        filled: true,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
