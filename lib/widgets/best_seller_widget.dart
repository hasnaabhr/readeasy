import 'package:flutter/material.dart';
import 'package:readeasy/screens/book_view.dart';
import 'package:readeasy/widgets/rating_widget.dart'; // Import BookView

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.price,
  });

  final String image, price;
  final String title, subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // عند الضغط على الكتاب، ننتقل إلى صفحة BookView
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookView(
              image: image, 
              title: title,
              subtitle: subtitle,
              content: 'This is the content for the book $title', // محتوى الكتاب، يمكن تغييره حسب الحاجة
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 168,
            height: 275,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                // Container for the image on the left
                Container(
                  width: 169,
                  height: 178,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.91, left: 35, right: 35, bottom: 12.91),
                    child: Image.asset(
                      image,
                      width: 98.53,
                      height: 150.09,
                      fit: BoxFit.cover,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 2, right: 4, bottom: 2, left: 4),
                              width: 37,
                              height: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffFFF8E0),
                              ),
                              child: const RatingWidget(),
                            ),
                          ],
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
                        const SizedBox(height: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$$price',
                              style: const TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2E2E2E)),
                            ),
                            const Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 22,
                              color: Color(0xff000000),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
