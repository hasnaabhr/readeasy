import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key, required this.label, required TextStyle labelStyle});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: 343,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF1F1F1),
      ),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.search,
            size: 20,
            color: Color(0xff1E1E1E),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: label,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1E1E1E),
                ),
              ),
              style: const TextStyle(
                fontFamily: 'Georgia',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff1E1E1E),
              ),
            ),
          ),
          const Icon(
            CupertinoIcons.mic,
            size: 20,
            color: Color(0xff1E1E1E),
          ),
        ],
      ),
    );
  }
}
