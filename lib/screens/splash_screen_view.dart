import 'dart:async';
import 'package:flutter/material.dart';
import 'package:readeasy/screens/getstarted_view.dart';
import 'package:readeasy/screens/splash_screen_view_body.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        // Check if the widget is still in the widget tree
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const GetstartedView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const SplashScreenViewBody(),
    );
  }
}
