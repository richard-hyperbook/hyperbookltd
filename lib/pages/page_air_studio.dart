import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AirStudioPage extends StatelessWidget {
  static const String name = 'airstudio';

  const AirStudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            ...[
              const MinimalMenuBar(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom12,
                  child: Text("AIR Studio", style: headlineTextStyle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom24,
                  child: Text("An app to record AIRs for Art Therapists",
                      style: subtitleTextStyle),
                ),
              ),
              divider,
              Container(
                margin: marginBottom40,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom12,
                  child: Text("Delete AIR Studiio?", style: headlineSecondaryTextStyle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom24,
                  child: Text("To delete your account in AIR Studio:\n1. Go to the login page.\n2. Click on the Menu icon.\n3. Click on 'Profile.'\n4. Click on 'Delete Account''\n5. Follow the instrctions on the screen.\n\nThis will delete your account and all data that you have uploaded.",
                      style: subtitleTextStyle),
                ),
              ),
              dividerSmall,
              Container(
                margin: marginBottom24,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: marginBottom24,
                  child: Text("_____", style: headlineTextStyle),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: marginBottom24,
                  child: Text("_____",
                      style: headlineSecondaryTextStyle),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: marginBottom24,
                  child: Text("____", style: subtitleTextStyle),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: marginBottom40,
                  child: Text(
                      "____",
                      style: bodyTextStyle),
                ),
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
      ),
    );
  }
}
