import 'package:flutter/material.dart';
import 'package:readeasy/widgets/custome_appBar.dart';
import 'package:readeasy/widgets/downloaded_books_grid.dart';

class DownloadsViewBody extends StatelessWidget {
  const DownloadsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomeAppBarWidget(
              title: 'Downloads',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 15,
            ),
            DownloadedBooksGrid()
          ],
        ),
      ),
    );
  }
}

