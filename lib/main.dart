import 'package:flutter/material.dart';
// change import sentence fade-in/fade-out by button or whole screen
import 'package:flutter_animation_sample/fade_in_whole_screen.dart';
// import 'package:flutter_animation_sample/fade_in_with_button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Annimation Demo',
      home: FadeInPage(),
    );
  }
}