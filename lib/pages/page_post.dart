import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostPage extends StatelessWidget {
  static const String name = 'post';

  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: CustomScrollView(
        slivers: [
          ...[
            const MinimalMenuBar(),
            const ImageWrapper(
              image: "assets/images/hyperbook7.jpeg",
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: marginBottom12,
                child: Text(
                  "Hyperbook Ltd apps",
                  style: headlineTextStyle,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextBodySecondary(text: "Writing  /  Project"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextBody(
                  text:
                      "____"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextBody(
                  text:
                      "____"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextHeadlineSecondary(text: "____"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextBody(
                  text:
                      "____"),
            ),
            const TextBlockquote(
                text:
                    "____"),
            const Align(
              alignment: Alignment.centerLeft,
              child: TextBody(
                  text:
                      "____"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: TagWrapper(tags: [
                Tag(tag: "Writing"),
                Tag(tag: "Photography"),
                Tag(tag: "Development")
              ]),
            ),
            ...authorSection(
                imageUrl: "assets/images/hyperbook8.jpeg",
                name: "Type Pages",
                bio:
                    "____"),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: const PostNavigation(),
            ),
          ].toMaxWidthSliver(),
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
