import 'package:flutter/material.dart';
import 'package:readeasy/font_size_provider.dart'; // Import the FontSizeProvider

class ChangingFontSize extends StatelessWidget {
  final FontSizeProvider fontSizeProvider;

  const ChangingFontSize(this.fontSizeProvider, {super.key});  // الآن الـ fontSizeProvider هو معلمة البناء.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent, // Transparent background for dialog
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
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
              const Text(
                'Font Size',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              // Convert int size to double when assigning to Dropdown
              DropdownButtonFormField<double>(
                value: fontSizeProvider.fontSize,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                items: [10, 12, 14, 16, 18, 20, 22, 24, 26]
                    .map((size) => DropdownMenuItem<double>(  // Use DropdownMenuItem for double values
                          value: size.toDouble(), // Convert int to double
                          child: Text('$size px'),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    fontSizeProvider.setFontSize(value); // Update font size in the provider
                    Navigator.pop(context); // Close the dialog after saving the font size
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
