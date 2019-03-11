import 'package:flutter/material.dart';

class TapCounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TapCounterWidgetState();
}

class _TapCounterWidgetState extends State<TapCounterWidget> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        setState(() {
          _count = 0;
        });
      },
      onTap: () {
        setState(() {
          _count += 1;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Text('Count: $_count'),
        ),
      ),
    );
  }
}