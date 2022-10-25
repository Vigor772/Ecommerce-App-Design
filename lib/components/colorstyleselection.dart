import 'package:flutter/material.dart';

class ColorStyleSelection extends StatefulWidget {
  @override
  _ColorStyleSelectionState createState() => _ColorStyleSelectionState();
}

class _ColorStyleSelectionState extends State<ColorStyleSelection> {
  bool redTap = false;
  bool blueTap = false;
  bool greenTap = false;
  bool blackTap = false;
  bool whiteTap = false;
  bool orangeTap = false;
  bool purpleTap = false;

  @override
  void initState() {
    redTap = false;
    blueTap = false;
    greenTap = false;
    blackTap = false;
    whiteTap = false;
    orangeTap = false;
    purpleTap = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              redTap = true;
              blueTap = false;
              greenTap = false;
              blackTap = false;
              whiteTap = false;
              orangeTap = false;
              purpleTap = false;
            });
          },
          child: Container(
            height: (redTap == false) ? 30 : 40,
            width: (redTap == false) ? 30 : 40,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    strokeAlign: StrokeAlign.center,
                    style: BorderStyle.solid),
                shape: BoxShape.circle,
                color: Colors.red),
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              blueTap = true;
              redTap = false;
              greenTap = false;
              blackTap = false;
              whiteTap = false;
              orangeTap = false;
              purpleTap = false;
            });
          },
          child: Container(
              height: (blueTap == false) ? 30 : 40,
              width: (blueTap == false) ? 30 : 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue)),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              greenTap = true;
              blueTap = false;
              redTap = false;
              blackTap = false;
              whiteTap = false;
              orangeTap = false;
              purpleTap = false;
            });
          },
          child: Container(
              height: (greenTap == false) ? 30 : 40,
              width: (greenTap == false) ? 30 : 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green)),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              blackTap = true;
              greenTap = false;
              blueTap = false;
              redTap = false;
              whiteTap = false;
              orangeTap = false;
              purpleTap = false;
            });
          },
          child: Container(
              height: (blackTap == false) ? 30 : 40,
              width: (blackTap == false) ? 30 : 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black)),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              blackTap = false;
              greenTap = false;
              blueTap = false;
              redTap = false;
              whiteTap = true;
              orangeTap = false;
              purpleTap = false;
            });
          },
          child: Container(
              height: (whiteTap == false) ? 30 : 40,
              width: (whiteTap == false) ? 30 : 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle,
                  color: Colors.white)),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              blackTap = false;
              greenTap = false;
              blueTap = false;
              redTap = false;
              whiteTap = false;
              orangeTap = true;
              purpleTap = false;
            });
          },
          child: Container(
              height: (orangeTap == false) ? 30 : 40,
              width: (orangeTap == false) ? 30 : 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.orange)),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            setState(() {
              blackTap = false;
              greenTap = false;
              blueTap = false;
              redTap = false;
              whiteTap = false;
              orangeTap = false;
              purpleTap = true;
            });
          },
          child: Container(
              height: (purpleTap == false) ? 30 : 40,
              width: (purpleTap == false) ? 30 : 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.purple)),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
