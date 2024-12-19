import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_info_widget.dart';
import 'package:readeasy/widgets/custome_title_section.dart';

class BookViewBody extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String content;

  const BookViewBody({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomeTitleSection(
            title: title,
            subtitle: subtitle,
          ),
          const SizedBox(height: 16),
          Center(
            child: Image.asset(
              image,
              width: 152.63,
              height: 240,
            ),
          ),
          const SizedBox(height: 37),
          const BookInfoWidget(),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff2E2E2E),
                fontFamily: 'Georgia',
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
