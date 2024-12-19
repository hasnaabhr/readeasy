import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_content.dart';
import 'package:readeasy/widgets/custome_search.dart';
import 'package:readeasy/widgets/custome_title_section.dart';

class ReadingViewBody extends StatelessWidget {
  final String title; //
  final String subtitle; //
  final String content; //

  const ReadingViewBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Using dynamic theme colors for the title section
            CustomeTitleSection(title: title, subtitle: subtitle),
            const SizedBox(height: 10),
            // Custom search with dynamic text color
            CustomSearch(
              label: 'Search',
              labelStyle: TextStyle(color: theme.textTheme.bodyLarge?.color),
            ),
            const SizedBox(height: 10),
            // Book content with dynamic text style based on theme
            BookContent(
              storyTextStyle: _getStoryTextStyle(theme),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _getStoryTextStyle(ThemeData theme) {
    return TextStyle(
      fontSize: 18,
      height: 1.5,
      fontFamily: 'Georgia',
      color: theme.textTheme.bodyLarge?.color ?? const Color(0xff2E2E2E),
    );
  }
}
