import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/theme_provider.dart'; // Import the ThemeProvider
import 'package:readeasy/screens/splash_screen_view.dart'; // Your app's initial screen

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => UiProvider()..init()), // Theme provider
      ],
      child: const ReadEasy(),
    ),
  );
}

class ReadEasy extends StatelessWidget {
  const ReadEasy({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.isDark
              ? themeProvider.darkTheme
              : themeProvider.lightTheme,
          home: const SplashScreenView(),
          // Apply theme globally to all screens
          themeMode: themeProvider.isDark
              ? ThemeMode.dark
              : ThemeMode.light, // Global Theme mode
        );
      },
    );
  }
}
