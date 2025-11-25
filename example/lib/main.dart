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

  void _toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visible Opacity',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Visible Opacity Example'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              VisibleOpacity(
                visible: isVisible,
                duration: animationDuration,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Widget A',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              VisibleOpacity(
                visible: !isVisible,
                duration: animationDuration,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'Widget B',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _toggleVisibility,
          child: const Icon(Icons.swap_horiz),
        ),
      ),
    );
  }
}