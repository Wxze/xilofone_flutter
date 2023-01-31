import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloButton extends StatelessWidget {
  const XyloButton(
      {super.key, required this.xyloButtonColor, required this.soundPath});

  final MaterialColor xyloButtonColor;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource(soundPath));
      },
      enableFeedback: false,
      color: xyloButtonColor,
    );
  }
}
