import 'package:flutter/material.dart';

class SlidersScreen extends StatefulWidget {
  SlidersScreen({Key key}) : super(key: key);

  _SlidersScreenState createState() => _SlidersScreenState();
}

class _SlidersScreenState extends State<SlidersScreen> {
  double _value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Slider(
        value: _value,
        onChanged: (double newVal) {
          print('newval: $newVal');
          setState(() {
            _value = newVal;
          });
        },
      ),
    );
  }
}
