import 'package:flutter/material.dart';
import 'package:readeasy/screens/reading_view_body.dart';
import 'package:readeasy/widgets/custome_nav_bar_reading_view.dart';

class ReadingView extends StatelessWidget {
  final String title; // العنوان
  final String subtitle; // العنوان الفرعي
  final String content; // النص الخاص بالكتاب

  const ReadingView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomeNavBarReadingView(),
      backgroundColor: const Color(0xffFFFFFF),
      body: ReadingViewBody(
        title: title,
        subtitle: subtitle,
        content: content,
      ),
    );
  }
}


