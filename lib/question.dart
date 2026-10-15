import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
  


}

class _QuestionScreenState extends State<QuestionWidget>{
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    // TODO: implement build
    return Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton(answerText: currentQuestion.answers[0], onTap:() {}),
          AnswerButton(answerText: currentQuestion.answers[1], onTap:() {}),
          AnswerButton(answerText: currentQuestion.answers[2], onTap:() {}),
          AnswerButton(answerText: currentQuestion.answers[3], onTap:() {}),
        ],
      ),
    );
  }


}