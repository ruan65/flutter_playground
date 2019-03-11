import 'package:flutter/material.dart';
import 'package:flutter_101_playground/widgets/statful/TapCounter.dart';
import 'package:flutter_101_playground/widgets/text_widgets.dart';

void main() {
  runApp(new DogApp());
}

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The dog app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yellow Lab'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            dogBox("Rocky Ban"),
            SizedBox(
              height: 8,
            ),
            dogBox('Lila Lulu'),
            SizedBox(
              height: 8,
            ),
            dogBox("Dzuchka"),
            SizedBox(
              height: 80,
            ),
            new TapCounterWidget(),
            SizedBox(
              height: 80,
            ),
            tapableText('Hello', () { print('I has been tapped :)');}),
          ]),
        ),
      ),
    );
  }
}
