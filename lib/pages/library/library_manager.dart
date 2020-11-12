import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:music_player/pages/library/NoMusicFound.dart';
import 'package:music_player/pages/library/library_home.dart';
import 'package:music_player/utils/db/database_client.dart';

class LibraryManager extends StatefulWidget {
  @override
  _LibraryManagerState createState() => _LibraryManagerState();
}

class _LibraryManagerState extends State<LibraryManager> {
  var db;
  var isLoading = false;

  // @override
  // void initState() {
  //   super.initState();
  //   loadSongs();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SpinKitWave(
          color: Theme.of(context).brightness==Brightness.dark?Colors.grey[500]:Colors.grey[700],
          size: 40.0,
        ),
      ),
      ),
    );
  }

  // loadSongs() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   var db = DatabaseClient();
  //   await db.create();
  //   if (await db.alreadyLoaded()) {
  //     Navigator.of(context)
  //         .pushReplacement(new MaterialPageRoute(builder: (context) {
  //       return LibraryHome();
  //     }));
  //   } else {
  //     var songs;
  //     try {
  //       songs = await MusicFinder.allSongs();
  //       List<Song> list = List.from(songs);

  //       if (list == null || list.length == 0) {
  //         print("List-> $list");

  //         Navigator.of(context)
  //             .pushReplacement(new MaterialPageRoute(builder: (context) {
  //           return NoMusicFound();
  //         }));
  //       } else {
  //         for (Song song in list) db.upsertSOng(song);
  //         if (!mounted) {
  //           return;
  //         }
  //         Navigator.of(context)
  //             .pushReplacement(new MaterialPageRoute(builder: (context) {
  //           return LibraryHome();
  //         }));
  //       }
  //     } catch (e) {
  //       print("failed to get songs");
  //     }
  //   }
  // }
}
