import 'package:flutter/material.dart';
import 'package:app_flutter/question.dart';
import 'package:app_flutter/answers.dart';

class Quiz extends StatelessWidget {
    final List<Map<String, Object>> questions;
    final int questionsIndex;
    final Function answerQuestion;

    Quiz(
        {@required this.questions,
            @required this.questionsIndex,
            @required this.answerQuestion});

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Question(questions.elementAt(questionsIndex)['Question']),
                ...(questions.elementAt(questionsIndex)['Answer'] as List)
                    .map((answer) {
                    return Answer(answerQuestion, answer);
                }).toList()
            ],
        );
    }
}
