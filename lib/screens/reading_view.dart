import 'package:flutter/material.dart';
import 'package:readeasy/screens/reading_view_body.dart';
import 'package:readeasy/widgets/custome_nav_bar_reading_view.dart';

class ReadingView extends StatelessWidget {
  final String title; //
  final String subtitle; //
  final String content; //

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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ReadingViewBody(
        title: title,
        subtitle: subtitle,
        content: content,
      ),
    );
  }
}
