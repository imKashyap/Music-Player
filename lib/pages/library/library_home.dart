import 'package:flutter/material.dart';

class LibraryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCustomListTile('Playlists', Icons.playlist_play, context),
        _buildCustomListTile('Albums', Icons.album_outlined, context),
        _buildCustomListTile('Songs', Icons.music_note_outlined, context),
        _buildCustomListTile('Artists', Icons.person, context),
      ],
    );
  }

  Widget _buildCustomListTile(String name, IconData icon,BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(leading: Icon(icon,
      size: 30.0,
      color: Theme.of(context).brightness==Brightness.dark?Colors.grey[500]:Colors.grey[700],
      ),
      title: Text(name,
      style: TextStyle(
        fontSize: 20.0
      ),),
      trailing: Icon(Icons.arrow_forward_ios_outlined,
      size: 20.0,),
      ),
    );
  }
}
