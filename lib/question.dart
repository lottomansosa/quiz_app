import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
  


}

class _QuestionScreenState extends State<QuestionWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('The question...'),
          const SizedBox(height: 30),
          AnswerButton(answerText: "Question 1", onTap:() {}),
          AnswerButton(answerText: "Question 2", onTap:() {}),
          AnswerButton(answerText: "Question 3", onTap:() {}),
          AnswerButton(answerText: "Question 4", onTap:() {}),
        ],
      ),
    );
  }


}