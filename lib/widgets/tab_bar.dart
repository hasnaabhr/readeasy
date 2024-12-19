import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final double width, height;
  final String text;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: selected ? const Color(0xffE76C00) : const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? const Color(0xffE76C00) : const Color(0xff939393),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Georgia',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: selected ? Colors.white : const Color(0xff939393),
            ),
          ),
        ),
      ),
    );
  }
}
