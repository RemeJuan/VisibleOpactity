import 'package:flutter/material.dart';

class VisibleOpacity extends StatelessWidget {
  final Widget child;
  final bool visible;
  final Duration duration;

  const VisibleOpacity({
    Key key,
    this.visible,
    this.child,
    this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: AnimatedOpacity(
        child: child,
        duration: duration ?? Duration(milliseconds: 250),
        opacity: visible ? 1 : 0,
      ),
      visible: visible,
      maintainAnimation: true,
      maintainState: true,
    );
  }
}
