import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import in the begining of the file
import 'package:audioplayers/audio_cache.dart';

//the fat arrow, arrow syntax
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // add it to your class as a local variable
  // final player = AudioCache();

  void playSounds(int noteNumber) {
    // add it to your class as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$noteNumber.wav');
  }

  Expanded theButtons({Color color, int playSoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          // call this method when desired
          //player.play('note2.wav');
          playSounds(playSoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              theButtons(color: Colors.red, playSoundNumber: 1),
              theButtons(color: Colors.orange, playSoundNumber: 2),
              theButtons(color: Colors.yellow, playSoundNumber: 3),
              theButtons(color: Colors.green, playSoundNumber: 4),
              theButtons(color: Colors.blue, playSoundNumber: 5),
              theButtons(color: Colors.indigo, playSoundNumber: 6),
              theButtons(color: Colors.purple, playSoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
