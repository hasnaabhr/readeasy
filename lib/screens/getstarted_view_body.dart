import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_cover.dart';
import 'package:readeasy/widgets/custome_button.dart';

class GetstartedViewBody extends StatelessWidget {
  const GetstartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BookCoverWidget(),
        const SizedBox(height: 38),
        Text(
          'Explore New Worlds of Knowledge\nLearn Easily with Books for Every\nField!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.textTheme.titleLarge?.color ?? Colors.black,
            fontFamily: 'Georgia',
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Discover Knowledge Across All Fields with Your\n Favorite Books at Your Fingertips!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.textTheme.bodyMedium?.color ?? Colors.black54,
            fontFamily: 'Georgia',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 40),
        const CustomeButton(),
      ],
    );
  }
}
