import 'package:flutter/material.dart';
import '../../widgets/footer.dart';


class SurveyQuestionsPage extends StatefulWidget {
  @override
  _SurveyQuestionsPageState createState() => _SurveyQuestionsPageState();
}

class _SurveyQuestionsPageState extends State<SurveyQuestionsPage> {
  int _currentQuestionIndex = 0;

  final List<String> _questions = [
    "Where did the incident occur?",
    "What time did the incident happen?",
    "Was the perpetrator known to you?",
    "Did you report the incident to anyone?",
    "Would you like to provide more details?"
  ];

  final List<String> _answers = List.filled(5, "");

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      Navigator.pushNamed(context, '/perpetrator');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Survey Questions")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _questions[_currentQuestionIndex],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (value) {
                _answers[_currentQuestionIndex] = value;
              },
              decoration: InputDecoration(hintText: "Your answer..."),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _nextQuestion,
              child: Text("Next"),
            ),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
