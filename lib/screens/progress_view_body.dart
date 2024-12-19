import 'package:flutter/material.dart';
import 'package:readeasy/widgets/continue_reading_section.dart';
import 'package:readeasy/widgets/custome_appBar.dart';

class ProgressViewBody extends StatelessWidget {
  const ProgressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
          top: 67, left: 25, right: 25), // Added padding for right side
      child: SingleChildScrollView(
        // Adding scroll view to prevent overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Using the theme to style the app bar dynamically
            CustomeAppBarWidget(
              title: 'Progress',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              titleColor: theme.textTheme.titleLarge?.color ?? Colors.black,
            ),
            const SizedBox(height: 30),
            // Continue Reading Section with dynamic title and background color
            const ContinueReadingSection(
              image: 'assets/images/b1.png',
              title: 'A Day of Fallen Night',
              subtitle: 'Samantha Shannon',
              color: Color(0xffCBF5FF),
            ),
            const SizedBox(height: 29),
            const ContinueReadingSection(
              image: 'assets/images/b3.png',
              title: 'Ninth House',
              subtitle: 'Lelgh Bradugo',
              color: Color(0xffDEDFE2),
            ),
            const SizedBox(height: 29),
            const ContinueReadingSection(
              image: 'assets/images/b2.png',
              title: 'One Dark Window',
              subtitle: 'Rachel Gillig',
              color: Color.fromARGB(255, 121, 138, 111),
            ),
          ],
        ),
      ),
    );
  }
}
