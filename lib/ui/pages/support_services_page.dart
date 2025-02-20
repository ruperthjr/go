import 'package:flutter/material.dart';
import '../widgets/footer.dart';

class SupportServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support Services")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.phone, color: Colors.purple),
              title: Text("National Helpline"),
              subtitle: Text("+123 456 7890"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.purple),
              title: Text("Email Support"),
              subtitle: Text("help@support.org"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.purple),
              title: Text("Local Support Center"),
              subtitle: Text("123 Main Street, City"),
              onTap: () {},
            ),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
