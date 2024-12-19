import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readeasy/font_size_provider.dart';
import 'package:readeasy/theme_provider.dart'; // Import the ThemeProvider
import 'package:readeasy/widgets/ChangingColorsWidget.dart';
import 'package:readeasy/widgets/changing_font_size_widget.dart';
import 'package:readeasy/widgets/custome_appBar.dart';
import 'package:readeasy/widgets/setting_custome_widget.dart'; // Import custom widgets
import 'package:readeasy/screens/progress_view.dart'; // Import Progress screen

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 67, left: 25, right: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomeAppBarWidget(
              title: 'Settings',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 30),
            SettingCustomeWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProgressView()),
                );
              },
              text: 'Progress',
              icon: Icons.bar_chart,
            ),
            const SizedBox(height: 17),
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
            SettingCustomeWidget(
              text: 'Dark Mode',
              icon: Icons.dark_mode,
              onTap: () {
                // Toggle the theme mode
                context.read<UiProvider>().changeTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}