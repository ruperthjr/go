import 'package:flutter/material.dart';
import 'ui/pages/home_page.dart';
import 'ui/pages/report_page.dart';
import 'ui/pages/support_services_page.dart';
import 'ui/pages/survey/survey_intro_page.dart';
import 'ui/pages/survey/survey_questions_page.dart';
import 'ui/pages/survey/perpetrator_page.dart';

void main() {
  runApp(SexualReportApp());
}

class SexualReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sexual Report App',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/report': (context) => ReportPage(),
        '/support_services': (context) => SupportServicesPage(),
        '/survey': (context) => SurveyIntroPage(),
        '/survey_questions': (context) => SurveyQuestionsPage(),
        '/perpetrator': (context) => PerpetratorPage(),
      },
    );
  }
}
