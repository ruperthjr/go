import 'package:flutter/material.dart';
import '../../widgets/footer.dart';


class SurveyIntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Survey Introduction")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Please answer the following questions about the incident.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/survey_questions');
              },
              child: Text("Start Survey"),
            ),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
