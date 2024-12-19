// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_cover.dart';

class SplashScreenViewBody extends StatefulWidget {
  const SplashScreenViewBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenViewBodyState createState() => _SplashScreenViewBodyState();
}

class _SplashScreenViewBodyState extends State<SplashScreenViewBody> {
  @override
  void initState() {
    super.initState();

    // Navigate to another screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to Home or Main screen
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
