import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/background_color_provider.dart';

class ChangingColorsWidget extends StatelessWidget {
  const ChangingColorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Directly use the BackgroundColorProvider through Consumer
    return Consumer<BackgroundColorProvider>(
      builder: (context, backgroundColorProvider, child) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 300,
            decoration: BoxDecoration(
              color: backgroundColorProvider.backgroundColor, // Use the background color from the provider
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // White color option
                    GestureDetector(
                      onTap: () => backgroundColorProvider.setBackgroundColor(Colors.white), // Update the color
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backgroundColorProvider.backgroundColor == Colors.white
                                    ? Colors.red
                                    : Colors.transparent,
                                width: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'White',
                            style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Cream color option
                    GestureDetector(
                      onTap: () => backgroundColorProvider.setBackgroundColor(const Color(0xffFFF7E0)), // Update the color
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFF7E0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backgroundColorProvider.backgroundColor == const Color(0xffFFF7E0)
                                    ? Colors.red
                                    : Colors.transparent,
                                width: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Cream',
                            style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
