import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readeasy/widgets/circle_progress_widget.dart';
import 'package:readeasy/screens/settings_view.dart';

class CustomeNavBarReadingView extends StatelessWidget {
  const CustomeNavBarReadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Use double.infinity for full width
      height: 80, // Define fixed height
      decoration: const BoxDecoration(
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Color(0x30000000),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  CupertinoIcons.arrow_left,
                  size: 20,
                  color: Color(0xffE76C00),
                ),
                onPressed: () {
                  // Handle previous button press
                },
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.arrow_right,
                  size: 20,
                  color: Color(0xffE76C00),
                ),
                onPressed: () {
                  // Handle next button press
                },
              ),
            ],
          ),
          const CirclePogressWidget(),
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 24,
              color: Color(0xffE76C00),
            ),
            onPressed: () {
              // Navigate to the settings page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
