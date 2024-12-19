import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFCC400),
          size: 11,
        ),
        SizedBox(
          width: 0.5,
        ),
        Text(
          '4.8',
          style: TextStyle(
            color: Color(0xff2E2E2E),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
