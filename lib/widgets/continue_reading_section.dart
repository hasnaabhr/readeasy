import 'package:flutter/material.dart';
import 'package:readeasy/screens/book_view.dart';

class ContinueReadingSection extends StatelessWidget {
  const ContinueReadingSection({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
    this.content,
  });

  final String image;
  final String title, subtitle;
  final String? content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 290,
          height: 144,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              // Container for the image on the left
              Container(
                width: 100,
                height: 144,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 16, right: 16, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookView(
                            image: image,
                            title: title,
                            subtitle: subtitle,
                            content: content!,
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      image,
                      width: 68.18,
                      height: 105,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Right section with title, subtitle, and progress
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff515151),
                        ),
                      ),
                      const SizedBox(height: 18),
                      // Progress bar
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Container(
                            width: 100, // Adjust this width for the progress
                            height: 8,
                            decoration: BoxDecoration(
                              color: const Color(0xffE76C00),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      // Percentage text
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '30%',
                          style: TextStyle(
                            fontSize: 9,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
