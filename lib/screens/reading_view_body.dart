import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_content.dart';
import 'package:readeasy/widgets/custome_search.dart';
import 'package:readeasy/widgets/custome_title_section.dart';

class ReadingViewBody extends StatelessWidget {
  final String title; // العنوان
  final String subtitle; // العنوان الفرعي
  final String content; // المحتوى الخاص بالكتاب

  const ReadingViewBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeTitleSection(title: title, subtitle: subtitle),
            const SizedBox(height: 10),
            const CustomSearch(label: 'Search'),
            const SizedBox(height: 10),
            BookContent(
              // يتم تمرير النص الديناميكي هنا
              storyTextStyle: _storyTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  TextStyle get _storyTextStyle => const TextStyle(
        fontSize: 18,
        height: 1.5,
        fontFamily: 'Georgia',
        color: Color(0xff2E2E2E),
      );
}
