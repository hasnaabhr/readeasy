import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeTitleSection extends StatelessWidget {
  final String title; // العنوان
  final String subtitle; // الكاتب أو العنوان الفرعي

  const CustomeTitleSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context); // الرجوع إلى الصفحة السابقة
              },
              icon: const Icon(
                CupertinoIcons.arrow_left_circle,
                size: 27,
              ),
            ),
            const SizedBox(width: 73),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Georgia',
                  color: Color(0xff2E2E2E),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis, // لعدم تجاوز النص
                ),
              ),
            ),
          ],
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontFamily: 'Georgia',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff686868),
          ),
        ),
      ],
    );
  }
}
