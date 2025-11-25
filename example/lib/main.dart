import 'package:flutter/material.dart';
import 'package:visible_opacity/visible_opacity.dart';

void main() => runApp(const VisibleOpacityExample());

class VisibleOpacityExample extends StatefulWidget {
  const VisibleOpacityExample({super.key});

  @override
  State<StatefulWidget> createState() => _VisibleOpacityExampleState();
}

class _VisibleOpacityExampleState extends State<VisibleOpacityExample> {
  bool isVisible = false;
  final animationDuration = const Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visible Opacity',
      home: Scaffold(
        body: Column(
          children: [
            VisibleOpacity(
              visible: isVisible,
              duration: animationDuration,
              child: Container(),
            ),
            VisibleOpacity(
              visible: !isVisible,
              duration: animationDuration,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}