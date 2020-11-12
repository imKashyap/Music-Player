import 'package:flutter/material.dart';
import 'package:music_player/utils/theming/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    String selectedTheme = isDarkMode ? 'Dark' : 'Light';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: 'GoogleSans'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'THEME',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.red),
              ),
            ),
            SwitchListTile(
              activeColor: Colors.red,
              title: Text('Dark Mode'),
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (bool val) {
                themeChange.darkTheme = !themeChange.darkTheme;
              },
            ),
          ],
        ),
      ),
    );
  }
}
