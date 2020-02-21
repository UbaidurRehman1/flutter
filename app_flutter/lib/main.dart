import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final List<String> questions = [
    'What\'s your fav color?',
    'What\'s your fav animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App 1'),
        ),
        body: Column(
          children: [
            Text('Question # 1'),
            RaisedButton(child: Text('Answer'), onPressed: null),
            RaisedButton(child: Text('Answer'), onPressed: null),
            RaisedButton(child: Text('Answer'), onPressed: null),
          ],
        ),
      ),
    );
  }
}
