import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readeasy/screens/downloads_view.dart';
import 'package:readeasy/screens/home_view_body.dart';
import 'package:readeasy/screens/settings_view.dart';
import 'package:readeasy/screens/wishlist_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeViewBody(),
    const WishlistView(),
    const DownloadsView(),
    const SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cloud_download),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: const Color(0xffE76C00),
        unselectedItemColor: const Color(0xff969696),
      ),
    );
  }
}
