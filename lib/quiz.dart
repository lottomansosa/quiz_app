import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/start_screen.dart';

class QuizStart extends StatefulWidget{
  const QuizStart({super.key});
  @override
  State<StatefulWidget> createState() {
   return _QuizState();
   
  }
}

  class _QuizState extends State<QuizStart>{
    Widget? activeScreen;
    final List<String> selectedAnswers = [];
     //Make in quiz so everything could see it
    void chooseAnswer(String answer) {
      selectedAnswers.add(answer);
    }

    void switchScreen(){
    
      setState((){
        activeScreen = QuestionWidget(onSelectedAnswer: chooseAnswer,);
      });
    }
    void initState()
    {
      activeScreen = StartScreen(switchScreen);
      super.initState();
    }

    
  @override
  Widget build(BuildContext context) {
    return activeScreen!;
  }
    
    
  }


