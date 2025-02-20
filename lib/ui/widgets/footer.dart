import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {},
            ),
          ],
        ),
        TextButton(onPressed: () {}, child: Text("About")),
        TextButton(onPressed: () {}, child: Text("FAQs")),
        TextButton(onPressed: () {}, child: Text("Get Help & Support")),
      ],
    );
  }
}
