import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey(Color color, int noteNum) {
    return Expanded(
      child: TextButton(
          child: Text(""),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => color),
          ),
          onPressed: () {
            playSound(noteNum);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
          body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.purple, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.indigo, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.yellow, 6),
              buildKey(Colors.orange, 7),
            ],
          ),
        ),
      )),
    );
  }
}
