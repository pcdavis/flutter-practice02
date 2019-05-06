import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

class AudioPlayButton extends StatefulWidget {
  AudioPlayButton({Key key}) : super(key: key);

  _AudioPlayButtonState createState() => _AudioPlayButtonState();
}

class _AudioPlayButtonState extends State<AudioPlayButton> {
  bool _isPlaying = false;
  FlutterSound _sound;

  @override
  void initState() {
    super.initState();
    _sound = new FlutterSound();
  }

  void _stop() async {
    String result = await _sound.stopPlayer();
    print('stop result: $result');
  }

  void _play() async {
    final url =
        'https://commons.wikimedia.org/wiki/File:A_Tale_of_Distant_Lands.mp3';

    String path = await _sound.startPlayer(url);
    print('startPlayer: $path');

    // _playerSubscription = _sound.onPlayerStateChanged.listen((e) {
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
