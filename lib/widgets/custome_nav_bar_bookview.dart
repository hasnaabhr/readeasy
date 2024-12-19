import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readeasy/screens/downloads_view.dart';
import 'package:readeasy/screens/reading_view.dart';
import 'package:readeasy/screens/wishlist_view.dart';

class CustomeNavBarBookView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String content;

  const CustomeNavBarBookView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Use double.infinity for full width
      height: 80, // Define fixed height
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 10), // Padding inside the container
      decoration: const BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Color(0x30000000),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the icon in the row
        children: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.cloud_download,
              size: 24,
              color: Color(0xffE76C00),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DownloadsView()));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bookmark,
              size: 24,
              color: Color(0xff3180FF),
            ),
            onPressed: () {
              // Handle download button press
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WishlistView()));
            },
          ),
          const SizedBox(
            width: 39,
          ),
          GestureDetector(
            onTap: () {
              // التمرير الصحيح للبيانات
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadingView(
                    title: title,       // عنوان الكتاب
                    subtitle: subtitle, // العنوان الفرعي
                    content: content,   // النص الكامل للكتاب
                  ),
                ),
              );
            },
            child: Container(
              width: 187,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffE76C00),
              ),
              child: const Center(
                child: Text(
                  'Read Now',
                  style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
