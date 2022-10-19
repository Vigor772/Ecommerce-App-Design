import 'package:flutter/material.dart';

class IndexStack extends StatefulWidget {
  final int index;

  const IndexStack({Key? key, required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IndexStackState();
}

class _IndexStackState extends State<IndexStack> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      child: IndexedStack(
        //alignment: Alignment.bottomCenter,
        index: widget.index,
        children: [],
      ),
    );
  }
}
