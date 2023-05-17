import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  AudioPlayer player = AudioPlayer();

  void playSound(int tuneNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$tuneNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {
                  playSound(2);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {
                  playSound(3);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  playSound(4);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)),
                onPressed: () {
                  playSound(5);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  playSound(6);
                },
                child: const Text(''),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
