import 'package:flutter/material.dart';

class FadeInPage extends StatefulWidget {
  @override
  _FadeInPageState createState() => _FadeInPageState();
}

// The State class is responsible for two things: holding some data we can
// update and building the UI using that data.
class _FadeInPageState extends State<FadeInPage> {
  // Whether the green box should be visible or invisible
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fade in / Fade out by whole screen"),
        ),
        body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Center(
              child: AnimatedOpacity(
                // If the Widget should be visible, animate to 1.0 (fully visible). If
                // the Widget should be hidden, animate to 0.0 (invisible).
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                // The green box needs to be the child of the AnimatedOpacity
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.green,
                ),
              ),
            ),
            onTap: () {
              setState(() {
                _visible = !_visible;
              });
            }));
  }
}
