import 'package:flutter/material.dart';
import 'package:music_player/utils/theming/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return AppBar(
      elevation: 0.0,
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            scale: 9,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text('Musx',
          style: TextStyle(
            fontFamily: 'GoogleSans',
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(
            icon: Icon(
                isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round),
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
                themeChange.darkTheme = !themeChange.darkTheme;
              });
            }),
      ],
      automaticallyImplyLeading: true,
    );
  }
}
