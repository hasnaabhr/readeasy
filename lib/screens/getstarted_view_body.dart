import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_cover.dart';
import 'package:readeasy/widgets/custome_button.dart';

class GetstartedViewBody extends StatelessWidget {
  const GetstartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookCoverWidget(),
        SizedBox(
          height: 38,
        ),
        Text(
          'Explore New Worlds of Knowledge\nLearn Easily with Books for Every\nField!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff2E2E2E),
            fontFamily: 'Georgia',
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Discover Knowledge Across All Fields with Your\n Favorite Books at Your Fingertips!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff4B4C4F),
            fontFamily: 'Georgia',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        CustomeButton()
      ],
    );
  }
}

