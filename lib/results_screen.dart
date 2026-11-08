import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/Questions.dart';
import 'package:quiz_app/questions_summary.dart';


class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List <String> chosenAnswers;

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

    var numTotalQuestions = questions.length;
    var numCorrectQuestions = summaryData.where(
      (data){
      return data['correct_answer'] == ['user_answer'];
    }
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               Text('You answered $numCorrectQuestions of $numTotalQuestions questions Correctly'),
              const SizedBox(height:50,),
              QuestionsSummary(summaryData: summaryData),
              const SizedBox(height:10,),
              TextButton(
                onPressed: (){},
                child: const Text('Restart Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}