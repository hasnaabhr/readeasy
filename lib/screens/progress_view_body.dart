import 'package:flutter/material.dart';
import 'package:readeasy/widgets/continue_reading_section.dart';
import 'package:readeasy/widgets/custome_appBar.dart';

class ProgressViewBody extends StatelessWidget {
  const ProgressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 67, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBarWidget(
            title: 'Progress',
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(
            height: 30,
          ),
          ContinueReadingSection(
            image: 'assets/images/b1.png',
            title: 'A Day of Fallen Night',
            subtitle: 'Samantha Shannon',
            color: Color(0xffCBF5FF),
          ),
          SizedBox(
            height: 29,
          ),
          ContinueReadingSection(
            image: 'assets/images/b3.png',
            title: 'Ninth House',
            subtitle: 'Lelgh Bradugo',
            color: Color(0xffDEDFE2),
          ),
          SizedBox(
            height: 29,
          ),
          ContinueReadingSection(
            image: 'assets/images/b2.png',
            title: 'One Dark Window',
            subtitle: 'Rachel Gillig',
            color: Color.fromARGB(255, 121, 138, 111),
          ),
        ],
      ),
    );
  }
}
