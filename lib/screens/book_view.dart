import 'package:flutter/material.dart';
import 'package:readeasy/screens/book_view_body.dart';
import 'package:readeasy/widgets/custome_nav_bar_bookview.dart';

class BookView extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String content;

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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
