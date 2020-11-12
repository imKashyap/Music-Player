import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoMusicFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.replay_outlined,
          color: Colors.red,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness==Brightness.dark?Colors.grey[500]:Colors.grey[700],
                  fontSize: 60.0),
                ),
                SizedBox(width: 10.0,),
                Image.asset(
                  'assets/images/record.png',
                  color: Colors.red,
                  scale: 17,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '4',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness==Brightness.dark?Colors.grey[500]:Colors.grey[700],
                  fontSize: 60.0),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Text('No music found ',
            style: Theme.of(context).textTheme.headline5,)
          ],
        ),
      ),
    );
  }
}
