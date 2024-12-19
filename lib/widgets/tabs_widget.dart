import 'package:flutter/material.dart';
import 'package:readeasy/widgets/tab_bar.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({super.key});

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int selectedIndex = 0;

  void onTabTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TabBarWidget(
          width: 39,
          height: 30,
          text: 'All',
          selected: selectedIndex == 0,
          onTap: () => onTabTap(0),
        ),
        const SizedBox(width: 12),
        TabBarWidget(
          width: 74,
          height: 30,
          text: 'Romance',
          selected: selectedIndex == 1,
          onTap: () => onTabTap(1),
        ),
        const SizedBox(width: 12),
        TabBarWidget(
          width: 55,
          height: 30,
          text: 'Sci-Fi',
          selected: selectedIndex == 2,
          onTap: () => onTabTap(2),
        ),
        const SizedBox(width: 12),
        TabBarWidget(
          width: 66,
          height: 30,
          text: 'Fantasy',
          selected: selectedIndex == 3,
          onTap: () => onTabTap(3),
        ),
        const SizedBox(width: 12),
        TabBarWidget(
          width: 66,
          height: 30,
          text: 'Classics',
          selected: selectedIndex == 4,
          onTap: () => onTabTap(4),
        ),
      ],
    );
  }
}
