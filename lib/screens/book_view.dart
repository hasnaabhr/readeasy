import 'package:flutter/material.dart';
import 'package:readeasy/screens/book_view_body.dart';
import 'package:readeasy/widgets/custome_nav_bar_bookview.dart';

class BookView extends StatelessWidget {
  final String image; // صورة الكتاب
  final String title; // العنوان
  final String subtitle; // العنوان الفرعي
  final String content; // النص الخاص بالكتاب

  const BookView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: CustomeNavBarBookView(
        title: title,
        subtitle: subtitle,
        content: content,
      ),
      body: BookViewBody(
        image: image,
        title: title,
        subtitle: subtitle,
        content: content,
      ),
    );
  }
}
