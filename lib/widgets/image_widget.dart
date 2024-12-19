import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}