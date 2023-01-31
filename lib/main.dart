import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.setSource(AssetSource('note1.wav'));
              player.resume();
            },
            enableFeedback: false,
            child: const Text('Click me!'),
          ),
        ),
      ),
    );
  }
}
