import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/font_size_provider.dart';
import 'package:readeasy/background_color_provider.dart';
import 'package:readeasy/widgets/book_content.dart';
import 'package:readeasy/widgets/custome_search.dart';
import 'package:readeasy/widgets/custome_title_section.dart';

class ReadingViewBody extends StatelessWidget {
  final String title;
  final String subtitle;
  final String content;

  const ReadingViewBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final fontSizeProvider = Provider.of<FontSizeProvider>(context);
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);

    // Fetching the current theme
    final theme = Theme.of(context);

    return Container(
      color: backgroundColorProvider.backgroundColor, //
      child: Padding(
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
              // Book content with dynamic text style based on theme and font size
              BookContent(
                storyTextStyle: _getStoryTextStyle(
                  theme,
                  fontSizeProvider.fontSize, //
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _getStoryTextStyle(ThemeData theme, double fontSize) {
    return TextStyle(
      fontSize: fontSize, // حجم الخط الديناميكي
      height: 1.5,
      fontFamily: 'Georgia',
      color: theme.textTheme.bodyLarge?.color ?? const Color(0xff2E2E2E),
    );
  }
}
