import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color textColor;
  final Color buttonColor;
  final double height;
  final double width;
  final double fontSize;
  final Color borderColor;

  const ItemButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.borderColor = Colors.black,
    this.height = 50,
    this.width = 100,
    this.fontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          fixedSize: Size(width, height),
          side: BorderSide(color: borderColor)),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'Thesadith',
            fontWeight: FontWeight.bold,
            color: textColor),
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;
  final Color color;

  const ButtonIcon(
      {Key? key,
      required this.onPressed,
      required this.icon,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(color: color, onPressed: onPressed, icon: icon);
  }
}
