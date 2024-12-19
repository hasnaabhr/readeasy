import 'package:flutter/material.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 49.25,
            height: 20.63,
            decoration: BoxDecoration(
              color: const Color(0xffFFF8E0),
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  size: 15.13,
                  Icons.star,
                  color: Color(
                    0xffFCC400,
                  ),
                ),
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Container(
            width: 66,
            height: 23,
            decoration: BoxDecoration(
              color: const Color(0xffE2FCFB),
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Center(
              child: Text(
                'Fantasy',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Container(
            width: 62,
            height: 15,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Center(
              child: Text(
                '432 pages',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
