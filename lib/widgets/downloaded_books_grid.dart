
import 'package:flutter/material.dart';
import 'package:readeasy/widgets/image_widget.dart';



class DownloadedBooksGrid extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/b4.png',
    },
    {
      'image': 'assets/images/b5.png',
    },
    {
      'image': 'assets/images/b6.png',
    },
    {
      'image': 'assets/images/b7.png',
    },
  ];
  DownloadedBooksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15, // Reduced space
        crossAxisSpacing: 15, // Reduced space
        childAspectRatio: 0.7,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ImageWidget(image: item['image']);
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}


