import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AboutPage extends StatelessWidget {
  static const String name = 'about';

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String listItemTitleText = '';
    const String listItemPreviewText = '';
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const MinimalMenuBar(),
            const ListItem(
                imageUrl: "assets/images/hyperbook2.jpeg",
                title: listItemTitleText,
                description: 'Hyperbook Ltd. is a UK-based company specilaising in the creation of multi-platform apps'),
        
            ],
      ),


    );
  }
}
