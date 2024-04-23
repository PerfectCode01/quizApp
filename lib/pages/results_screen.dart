import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});
  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryDate() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryDate();
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = summaryData.where((data) => data['user_answer'] == data['correct_answer']).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('vous avez $numCorrectQuestion reponses correctes sur $numTotalQuestions'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
