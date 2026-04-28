import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';


class ContactPage extends StatelessWidget {
  static const String name = 'contact';

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String listItemTitleText = 'CONTACT';
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const MinimalMenuBar(),
            const ListItem(
                imageUrl: "assets/images/hyperbook3.jpeg",
                title: listItemTitleText,
                description:
                '''Hyperbook Ltd.
              2 Cowlins
              Harlow, CM17 0FZ, UK
              Tel: +44 1279 212485
              Email: info.hyperbook@gmail.com
        ''',
            ),
            divider,
            /*const ListItem(
                imageUrl:
                "assets/images/hyperbook3.jpeg",
                title: listItemTitleText,
                description: listItemPreviewText),
            divider,
            const ListItem(
                imageUrl: "assets/images/hyperbook4.jpeg",
                title: listItemTitleText,
                description: listItemPreviewText),
            divider,
            const ListItem(
                imageUrl:
                "assets/images/hyperbook5.jpeg",
                title: listItemTitleText,
                description: listItemPreviewText),
            divider,
            const ListItem(
                imageUrl:
                "assets/images/hyperbook6.jpeg",
                title: listItemTitleText,
                description: listItemPreviewText),
            divider,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: const ListNavigation(),
            ),*/
          ]/*.toMaxWidth()*/,

        ),
      ),


    );
  }
}
