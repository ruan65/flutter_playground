import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page 77'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Hero(
        tag: 'flutterLogo',
        child: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => HeroExamplePage())),
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}

class HeroExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected image'),
      ),
      body: Center(
        child: Hero(
            tag: 'flutterLogo',
            child: FlutterLogo(
              size: 300,
            )),
      ),
    );
  }
}
