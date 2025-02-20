import 'package:flutter/material.dart';
import '../../database/database_helper.dart';

class ReportsPage extends StatefulWidget {
  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  List<Map<String, dynamic>> _reports = [];

  @override
  void initState() {
    super.initState();
    _loadReports();
  }

  void _loadReports() async {
    List<Map<String, dynamic>> reports = await DatabaseHelper().getReports();
    setState(() {
      _reports = reports;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reports List")),
      body: ListView.builder(
        itemCount: _reports.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Report #${_reports[index]['id']}"),
            subtitle: Text(_reports[index]['details']),
          );
        },
      ),
    );
  }
}
