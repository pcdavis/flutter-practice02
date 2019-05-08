import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

class AudioPlayButton extends StatefulWidget {
  AudioPlayButton({Key key}) : super(key: key);

  _AudioPlayButtonState createState() => _AudioPlayButtonState();
}

class _AudioPlayButtonState extends State<AudioPlayButton> {
  bool _isPlaying = false;
  // FlutterSound flutterSound;

  // @override
  // void initState() {
  //   super.initState();
  //    flutterSound = new FlutterSound();
  // }

  void _stop() async {
    FlutterSound flutterSound = new FlutterSound();
    String result = await flutterSound.stopPlayer();
    print('stop result: $result');
  }

  void _play() async {
    final url =
        'https://commons.wikimedia.org/wiki/File:A_Tale_of_Distant_Lands.mp3';

    FlutterSound flutterSound = new FlutterSound();
    String path = await flutterSound.startPlayer(url);
    print(
        'startPlayer:-------------------------------------------------------------- $path');

    // _playerSubscription = flutterSound.onPlayerStateChanged.listen((e) {
    //   if (e != null) {
    //     DateTime date =
    //         new DateTime.fromMillisecondsSinceEpoch(e.currentPosition.toInt());
    //     String txt = DateFormat('mm:ss:SS', 'en_US').format(date);
    //     this.setState(() {
    //       this._isPlaying = true;
    //       this._playerTxt = txt.substring(0, 8);
    //     });
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isPlaying ? Icon(Icons.stop) : Icon(Icons.play_arrow),
      onPressed: () {
        if (_isPlaying) {
          _stop();
        } else {
          _play();
        }
        setState(() {
          _isPlaying = !_isPlaying;
        });
      },
    );
  }
}
