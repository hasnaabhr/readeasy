import 'package:flutter/material.dart';
import 'package:readeasy/widgets/custome_appBar.dart';
import 'package:readeasy/widgets/downloaded_books_grid.dart';

class DownloadsViewBody extends StatelessWidget {
  const DownloadsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);
    // Determine the title color based on the current theme
    final titleColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomeAppBarWidget(
              title: 'Downloads',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              titleColor: titleColor, // Set dynamic title color
            ),
            const SizedBox(
              height: 15,
            ),
            DownloadedBooksGrid(),
          ],
        ),
      ),
    );
  }
}
