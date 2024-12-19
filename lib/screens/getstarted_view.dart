import 'package:flutter/material.dart';
import 'package:readeasy/screens/getstarted_view_body.dart';

class GetstartedView extends StatelessWidget {
  const GetstartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     backgroundColor:  Color(0xffFFFFFF),
     body: GetstartedViewBody(),

    );
  }
}