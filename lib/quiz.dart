import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class QuizStart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _QuizState();
   
  }
}

  class _QuizState extends State<QuizStart>{
  @override
  Widget build(BuildContext context) {
    return Center(child: StartScreen());
  }
    
    
  }


