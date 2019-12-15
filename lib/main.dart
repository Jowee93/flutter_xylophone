import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int key) {
    final player = AudioCache();
    player.play('note$key.wav');
  }

  Expanded addKey({Color color, int key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        }, 
        child: Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                addKey(color: Colors.red, key: 1),
                addKey(color: Colors.orange, key: 2),
                addKey(color: Colors.yellow, key: 3),
                addKey(color: Colors.green, key: 4),
                addKey(color: Colors.blue, key: 5),
                addKey(color: Colors.indigo, key: 6),
                addKey(color: Colors.purple, key: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
