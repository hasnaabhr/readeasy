import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_details.dart';
import 'package:readeasy/widgets/custome_appBar.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);
    // Determine the title color based on the current theme
    final titleColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeAppBarWidget(
              title: 'Wishlist',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              titleColor: titleColor, // Set dynamic title color
            ),
            const SizedBox(
              height: 29,
            ),
            const BookDetails(),
            const SizedBox(
              height: 20,
            ),
            const BookDetails(),
            const SizedBox(
              height: 20,
            ),
            const BookDetails(),
            const SizedBox(
              height: 20,
            ),
            const BookDetails(),
            const SizedBox(
              height: 20,
            ),
            const BookDetails(),
          ],
        ),
      ),
    );
  }
}
