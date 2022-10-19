import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;
  final Icon icon4;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final Color backgroundColor;
  final Color selectedItemColor;
  late int selectedIndex;
  final Function(int) onClick;

  BottomNavigation(
      {Key? key,
      required this.icon1,
      required this.icon2,
      required this.icon3,
      required this.icon4,
      required this.label1,
      required this.label2,
      required this.label3,
      required this.label4,
      required this.backgroundColor,
      required this.selectedIndex,
      this.selectedItemColor = Colors.white,
      required this.onClick})
      : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: widget.onClick,
      currentIndex: widget.selectedIndex,
      backgroundColor: widget.backgroundColor,
      selectedItemColor: widget.selectedItemColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: widget.icon1,
          label: widget.label1,
        ),
        BottomNavigationBarItem(
          icon: widget.icon2,
          label: widget.label2,
        ),
        BottomNavigationBarItem(icon: widget.icon3, label: widget.label3),
        BottomNavigationBarItem(icon: widget.icon4, label: widget.label4),
      ],
    );
  }
}
