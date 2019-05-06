import 'package:flutter/material.dart';
import '../widgets/audio_playback.dart';

class TourStop1 extends StatelessWidget {
  const TourStop1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFECEFF1)),
      padding: EdgeInsets.all(15.0),
      child: AudioPlayButton(),
      alignment: Alignment(-1.0, 0.0),
    );
  }
}
