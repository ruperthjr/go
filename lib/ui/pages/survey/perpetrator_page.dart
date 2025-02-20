import 'package:flutter/material.dart';
import 'package:go/database/database_helper.dart'; // ✅ Correct the path
import '../../widgets/footer.dart';

class PerpetratorPage extends StatefulWidget {
  @override
  _PerpetratorPageState createState() => _PerpetratorPageState();
}

class _PerpetratorPageState extends State<PerpetratorPage> {
  final TextEditingController _perpetratorController = TextEditingController();
  final TextEditingController _detailsController = TextEditingController();

  void _saveReport() async {
    Map<String, dynamic> report = {
      "type": "Sexual Assault",
      "location": "Unknown",
      "time": "Not provided",
      "perpetrator": _perpetratorController.text,
      "details": _detailsController.text,
    };

    await DatabaseHelper().insertReport(report);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Report saved successfully!")),
    );

    Navigator.popUntil(context, ModalRoute.withName('/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perpetrator Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Provide any information about the perpetrator."),
            TextField(controller: _perpetratorController, decoration: InputDecoration(hintText: "Perpetrator Name")),
            TextField(controller: _detailsController, decoration: InputDecoration(hintText: "Incident Details")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _saveReport, child: Text("Submit Report")),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
