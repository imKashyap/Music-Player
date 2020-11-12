import 'package:flutter/material.dart';
import 'package:music_player/pages/settings_page.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF272727),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      scale: 10,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Musx',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontFamily: 'GoogleSans',
                            color: Colors.red,
                            //fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(),
              _buildDrawerItem('Home', Icons.library_music_outlined, context,
                  () {
                Navigator.of(context).pop();
              }),
              _buildDrawerItem('Folders', Icons.folder_outlined, context,(){}),
              _buildDrawerItem('Playing Queue', Icons.playlist_play, context,(){}),
              _buildDrawerItem('Equalizer', Icons.bar_chart_outlined, context,(){}),
              _buildDrawerItem('Settings', Icons.settings_outlined, context,(){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SettingsPage()));
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String name, IconData icon, BuildContext context, Function onPressed) {
    return InkWell(
      splashColor: Colors.grey[800],
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: name == 'Home' ? Colors.grey[800] : Colors.transparent,
            borderRadius:
                BorderRadius.horizontal(right: Radius.circular(40.0))),
        child: ListTile(
          leading: Icon(
            icon,
            color: name == 'Home' ? Colors.red[200] : null,
          ),
          title: Text(
            name,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: name == 'Home' ? Colors.red : null,
                ),
          ),
        ),
      ),
    );
  }
}
