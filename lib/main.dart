import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const XylophoneApp(),
  );
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioPlayer player = AudioPlayer();

  void playSound(int tuneNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$tuneNumber.wav'));
  }

  Expanded drawBoard(colorName, tuneNumber) {
    return Expanded(
      child: TextButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(colorName)),
        onPressed: () {
          playSound(tuneNumber);
        },
        child: const Text(''),
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
              drawBoard(Colors.red, 1),
              drawBoard(Colors.orange, 2),
              drawBoard(Colors.yellow, 3),
              drawBoard(Colors.green, 4),
              drawBoard(Colors.teal, 5),
              drawBoard(Colors.blue, 6),
              drawBoard(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
