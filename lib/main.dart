import 'package:flutter/material.dart';
import 'package:xilofone_flutter/xylobutton.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                XyloButton(xyloButtonColor: Colors.red, soundPath: 'note1.wav'),
                XyloButton(
                    xyloButtonColor: Colors.orange, soundPath: 'note2.wav'),
                XyloButton(
                    xyloButtonColor: Colors.yellow, soundPath: 'note3.wav'),
                XyloButton(
                    xyloButtonColor: Colors.green, soundPath: 'note4.wav'),
                XyloButton(
                    xyloButtonColor: Colors.teal, soundPath: 'note5.wav'),
                XyloButton(
                    xyloButtonColor: Colors.blue, soundPath: 'note6.wav'),
                XyloButton(
                    xyloButtonColor: Colors.purple, soundPath: 'note7.wav'),
              ],
            ),
          )),
    );
  }
}
