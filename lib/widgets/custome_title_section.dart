import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeTitleSection extends StatelessWidget {
  final String title; //
  final String subtitle; //

  const CustomeTitleSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // Get the current theme mode (light or dark)
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context); //
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
                style: TextStyle(
                  fontFamily: isDarkMode
                      ? 'Georgia'
                      : 'Roboto', // Change font based on theme mode
                  color: isDarkMode ? Colors.white : const Color(0xff2E2E2E),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis, // Prevent text overflow
                ),
              ),
            ),
          ],
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontFamily: isDarkMode
                ? 'Georgia'
                : 'Roboto', // Change font based on theme mode
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: isDarkMode ? Colors.grey[300] : const Color(0xff686868),
          ),
        ),
      ],
    );
  }
}
