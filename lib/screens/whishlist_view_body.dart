import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readeasy/widgets/book_details.dart';
import 'package:readeasy/widgets/custome_appBar.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 67, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeAppBarWidget(
              title: 'Wishlist',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 29,
            ),
            BookDetails(),
            SizedBox(
              height: 20,
            ),
            BookDetails(),
            SizedBox(
              height: 20,
            ),
            BookDetails(),
            SizedBox(
              height: 20,
            ),
            BookDetails(),
            SizedBox(
              height: 20,
            ),
            BookDetails(),
          ],
        ),
      ),
    );
  }
}
