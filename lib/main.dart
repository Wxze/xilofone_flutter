import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note1.wav'));
            },
            enableFeedback: false,
            child: const Text('Click me!'),
          ),
        ),
      ),
    );
  }
}
