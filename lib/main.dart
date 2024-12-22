import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/background_color_provider.dart';
import 'package:readeasy/font_size_provider.dart';
import 'package:readeasy/screens/home_view.dart';
import 'package:readeasy/theme_provider.dart'; // Import the ThemeProvider
import 'package:readeasy/screens/splash_screen_view.dart'; // Your app's initial screen

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UiProvider()..init(), // Theme provider
        ),
        ChangeNotifierProvider(
          create: (context) =>
              FontSizeProvider(), // FontSizeProvider added here
        ),
        ChangeNotifierProvider(
          create: (context) =>
              BackgroundColorProvider(), // FontSizeProvider added here
        ),
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
          home: const SplashScreenView(), // Initial Screen
          // Register routes if necessary
          routes: {
            '/home': (context) =>
                const HomeView(), // Add your home screen route
          },
          themeMode: themeProvider.isDark
              ? ThemeMode.dark
              : ThemeMode.light, // Global theme mode
        );
      },
    );
  }
}
