import 'package:flutter/material.dart';
import '../../widgets/footer.dart';


class PerpetratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perpetrator Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Provide any information about the perpetrator.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(decoration: InputDecoration(hintText: "Perpetrator Name")),
            TextField(decoration: InputDecoration(hintText: "Description")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text("Submit Report"),
            ),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
