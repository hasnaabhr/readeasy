import 'package:flutter/material.dart';
import 'package:readeasy/widgets/best_seller_widget.dart';

class BestSellerGrid extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/b4.png',
      'title': 'The Wolf Den',
      'subtitle': 'Elodie Harper',
      'color': const Color(0xffF8C183),
      'price': '6.99',
    },
    {
      'image': 'assets/images/b5.png',
      'title': 'Book of Night',
      'subtitle': 'Holly Black',
      'color': const Color(0xffF5EABD),
      'price': '9.99',
    },
    {
      'image': 'assets/images/b6.png',
      'title': 'A River Enchant',
      'subtitle': 'Rebecca Ross',
      'color': const Color(0xffC6E4FF),
      'price': '8.99',
    },
    {
      'image': 'assets/images/b7.png',
      'title': 'These Violent',
      'subtitle': 'Chloe Gong',
      'color': const Color(0xffFFC2BE),
      'price': '9.99',
    },
  ];

  BestSellerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4, // Reduced space
        crossAxisSpacing: 4, // Reduced space
        childAspectRatio: 0.6,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return BestSellerWidget(
          image: item['image'],
          title: item['title'],
          subtitle: item['subtitle'],
          color: item['color'],
          price: item['price'],
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
