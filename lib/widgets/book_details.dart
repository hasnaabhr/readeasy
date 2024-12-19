import 'package:flutter/material.dart';
import 'package:readeasy/widgets/rating_widget.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 80,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.38),
            ),
            child: Image.asset(
              'assets/images/b8.png',
              width: 60.26,
              height: 80,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingWidget(),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Entertainment Weekly',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Alice Schertle, Jill McElmurry',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9797AA)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
