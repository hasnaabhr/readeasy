import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeAppBarWidget extends StatelessWidget {
  const CustomeAppBarWidget(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.fontWeight});
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.arrow_left_circle,
            size: 27,
          ),
        ),
        const SizedBox(
          width: 97,
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Georgia',
            color: const Color(0xff2E2E2E),
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
