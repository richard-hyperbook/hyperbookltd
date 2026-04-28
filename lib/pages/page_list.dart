import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

// TODO Replace with object model.
const String listItemTitleText = "APPs THAT RUN ON ANDROID, iOS AND WEB";
const String listItemPreviewText =
    "Hyperbook Ltd. is a UK company delivering apps that run on all common platforms.";

class ListPage extends StatelessWidget {
  static const String name = 'list';

  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const MinimalMenuBar(),
              const ListItem(
                  imageUrl: "assets/images/hyperbook2.jpeg",
                  title: listItemTitleText,
                  description: listItemPreviewText),
              divider,
              const ListItem(
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
              ),
            ].toMaxWidth(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: MaxWidthBox(
                maxWidth: 1200,
                backgroundColor: Colors.white,
                child: Container()),
          ),
          ...[
            divider,
            const Footer(),
          ].toMaxWidthSliver(),
        ],
      ),
    );
  }
}
