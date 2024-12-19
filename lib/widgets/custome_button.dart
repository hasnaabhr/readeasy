import 'package:flutter/material.dart';
import 'package:readeasy/screens/home_view.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomeView()));
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, left: 16, bottom: 10, right: 16),
        width: 342,
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0xffE76C00),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              size: 24,
              color: Color(0xffFFFFFF),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Get started',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'Georgia',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
