import 'package:floating_search_bar/ui/sliver_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_player/utils/theming/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key,})
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
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: isDarkMode
            ? BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(Radius.circular(7.0)))
            : BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu, color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Search your music',
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}

// AppBar(
//       elevation: 0.0,
//       title:
//       actions: [
//         IconButton(icon: Icon(Icons.search), onPressed: () {}),
//         IconButton(
//             icon: Icon(
//                 isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round),
//             onPressed: () {
//               setState(() {
//                 isDarkMode = !isDarkMode;
//                 themeChange.darkTheme = !themeChange.darkTheme;
//               });
//             }),
//       ],
//       automaticallyImplyLeading: true,
//     );
