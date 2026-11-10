import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/Questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});
  final List <String> chosenAnswers;
  final void Function() onRestart;

  

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer' :questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }


  @override
  Widget build(context)
  {
    final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (data){
      return data['correct_answer'] == data['user_answer'];
    }
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               Text('You answered $numCorrectQuestions of $numTotalQuestions questions Correctly', style: GoogleFonts.oswald(color: const Color.fromARGB(137, 223, 249, 199),fontSize: 24)),
              const SizedBox(height:50,width: 50,),
              QuestionsSummary(summaryData: summaryData),
              const SizedBox(height:10, width: 50),
              TextButton(
                onPressed: (){onRestart();},
                child:  Text('Restart Quiz', style: GoogleFonts.lato(color: const Color.fromARGB(255, 255, 0, 0), fontSize: 18),),
              )
            ],
          ),
        ),
      ),
    );
  }
}