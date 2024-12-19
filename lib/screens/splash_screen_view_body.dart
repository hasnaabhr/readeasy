import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_cover.dart';

class SplashScreenViewBody extends StatelessWidget {
  const SplashScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BookCoverWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Read',
                style: TextStyle(
                    color: Color(0xff3180FF),
                    fontSize: 52,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Knewave'),
              ),
              Text(
                'Easy',
                style: TextStyle(
                    color: Color(0xffE76C00),
                    fontSize: 52,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Knewave'),
              )
            ],
          )
        ],
      ),
    );
  }
}

