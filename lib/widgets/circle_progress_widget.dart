import 'package:flutter/material.dart';

class CirclePogressWidget extends StatelessWidget {
  const CirclePogressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: CircularProgressIndicator(
                value: 0.15, // النسبة المئوية للتقدم، حيث 0.1 تمثل 10%
                strokeWidth: 8,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            const Text(
              '6 of 432',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.w400,
                color: Color(0xff262626),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
