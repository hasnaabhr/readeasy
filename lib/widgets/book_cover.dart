import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  const BookCoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: 25,
              left: 10,
              child: Container(
                width: 370,
                height: 370,
                decoration: const BoxDecoration(
                  color: Color(0x05EC8A54), // خلفية بنسبة شفافية 2%
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 83,
              left: 68,
              child: Container(
                width: 254,
                height: 254,
                decoration: BoxDecoration(
                  color: const Color(0xFFEC8A54).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 158,
              left: 77,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/splash.png', // ضع مسار الصورة هنا
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 98,
              left: 306,
              child: Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: Color(0xFFE76C00),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 274,
              left: 58,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFFE76C00),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
