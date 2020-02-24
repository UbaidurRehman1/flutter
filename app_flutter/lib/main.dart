import 'package:app_flutter/answers.dart';
import 'package:app_flutter/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FrontScreen();
  }
}

class _FrontScreen extends State<App> {
  var questionsIndex = 0;


  final List<Map<String, Object>> questions = [
    {
      'Question': "What is your favorite animal",
      'Answer': ['Lion', 'Elephant', 'Dog']
    },
    {
      'Question': "What is your favorite Language",
      'Answer': ['Java', 'Python', 'C++']
    },
    {
      'Question': "What is your favorite framwork",
      'Answer': ['Spring Boot', 'Django', 'Express']
    },
  ];

  void _answerQuestion() {
    setState(() {
      questionsIndex++;
    });
    print("Answer Questions");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App 1'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(questionsIndex)['Question']),
			... (questions.elementAt(questionsIndex)['Answer'] as List).map((answer) {
				return Answer(_answerQuestion, answer);
			}).toList()
          ],
        ),
      ),
    );
  }
}
