import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/font_size_provider.dart';
import 'package:readeasy/screens/progress_view.dart';
import 'package:readeasy/theme_provider.dart';
import 'package:readeasy/widgets/ChangingColorsWidget.dart';
import 'package:readeasy/widgets/changing_font_size_widget.dart';
import 'package:readeasy/widgets/custome_appBar.dart';
import 'package:readeasy/widgets/setting_custome_widget.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetching the current theme
    final theme = Theme.of(context);
    // Determine the title color based on the current theme
    final titleColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor:
          theme.scaffoldBackgroundColor, // Background color based on theme
      body: Padding(
        padding: const EdgeInsets.only(top: 67, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomeAppBarWidget(
                title: 'Settings',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                titleColor: titleColor, // Set dynamic title color
              ),
              const SizedBox(height: 30),
              // Progress setting
              SettingCustomeWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProgressView(),
                    ),
                  );
                },
                text: 'Progress',
                icon: Icons.bar_chart,
              ),
              const SizedBox(height: 17),
              // Font size setting
              SettingCustomeWidget(
                text: 'Font Size',
                icon: Icons.font_download,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Consumer<FontSizeProvider>(
                        builder: (context, fontSizeProvider, child) {
                          return ChangingFontSize(fontSizeProvider);
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 17),
              // Background color setting
              SettingCustomeWidget(
                text: 'Background Color',
                icon: Icons.color_lens,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ChangingColorsWidget();
                    },
                  );
                },
              ),
              const SizedBox(height: 17),
              // Dark mode toggle
              SettingCustomeWidget(
                text: 'Dark Mode',
                icon: Icons.dark_mode,
                onTap: () {
                  // Toggle theme and show feedback
                  context.read<UiProvider>().changeTheme();
                  final newTheme =
                      context.read<UiProvider>().isDark ? 'Dark' : 'Light';
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Switched to $newTheme mode')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
