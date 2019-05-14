import 'package:flutter/material.dart';
import 'package:flutter_101_playground/screens/Sliders/SlidersScreen.dart';
import 'package:flutter_101_playground/widgets/statful/TapCounter.dart';
import 'package:flutter_101_playground/widgets/text_widgets.dart';

void main() {
  runApp(new DogApp());
}

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _buildMenuItem(BuildContext ctx, int index) => ListTile(
      title: FlatButton(
        child: Text('Sliders'),
        onPressed: () {
            Navigator.of(ctx).pushNamed('/sliders');
        },
      ),
    );

    return MaterialApp(
      title: 'The dog app',
      routes: <String, WidgetBuilder>{
        '/sliders' : (BuildContext context) => SlidersScreen(), 
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yellow Lab'),
        ),
        drawer: Drawer(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int i) => _buildMenuItem(context, i),
          ),
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
