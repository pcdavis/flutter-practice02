import 'package:flutter/material.dart';
import '../widgets/audio_playback.dart';
// import 'page2.dart';
// import 'tour_stop.dart';
// import '../a_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The bad doggy bar"),
      ),
      body: Center(
        child: AudioPlayButton(),
      ),
    );
  }
}
