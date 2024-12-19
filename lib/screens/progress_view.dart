import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readeasy/screens/downloads_view.dart';
import 'package:readeasy/screens/home_view.dart';
import 'package:readeasy/screens/progress_view_body.dart';
import 'package:readeasy/screens/settings_view.dart';
import 'package:readeasy/screens/wishlist_view.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({super.key});

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      backgroundColor: Colors.white,
      body:const ProgressViewBody() ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffFFFFFF),
        currentIndex: _selectedIndex, // Set the current selected index
        onTap: _onItemTapped, // Handle item taps
        items: <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              icon: const Icon(CupertinoIcons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WishlistView()));
              },
              icon: const Icon(CupertinoIcons.bookmark),
            ),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DownloadsView()));
              },
              icon: const Icon(CupertinoIcons.cloud_download),
            ),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsView()));
              },
              icon: const Icon(CupertinoIcons.settings),
            ),
            label: 'Settings',
          ),
        ],
        selectedItemColor: const Color(0xffE76C00),
        unselectedItemColor: const Color(0xff969696),
      ),
    );
  }
}