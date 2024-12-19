import 'package:flutter/material.dart';
import 'package:readeasy/widgets/best_seller_grid.dart';
import 'package:readeasy/widgets/continue_reading_section.dart';
import 'package:readeasy/widgets/custome_search.dart';
import 'package:readeasy/widgets/tabs_widget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 25, right: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const CustomSearch(
              label: 'Search for books',
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabsWidget(),
            ),
            const SizedBox(height: 23),
            const Text(
              'Continue Reading',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)),
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContinueReadingSection(
                    image: 'assets/images/b1.png',
                    title: 'A Day of Fallen Night',
                    subtitle: 'Samantha Shannon',
                    color: Color(0xffCBF5FF),
                    content:
                        'This is a gripping tale of survival, resilience, and the power of human spirit.Follow Samantha on her unforgettable journey.',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ContinueReadingSection(
                    image: 'assets/images/b3.png',
                    title: 'Ninth House',
                    subtitle: 'Lelgh Bradugo',
                    color: Color(0xffDEDFE2),
                    content:
                        'Alex Stern is the most unlikely member of Yale’s freshman class. But behind its pristine facade lies a darker world...',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ContinueReadingSection(
                    image: 'assets/images/b2.png',
                    title: 'One Dark Window',
                    subtitle: 'Rachel Gillig',
                    color: Color.fromARGB(255, 121, 138, 111),
                    content:
                        'Elspeth Spindle needs a monster. She calls him the Nightmare, an ancient, mercurial spirit trapped in her head...',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'Best Sellers',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)),
            ),
            BestSellerGrid(),
          ],
        ),
      ),
    );
  }
}
