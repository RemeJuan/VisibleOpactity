import 'package:flutter/material.dart';

class VisibleOpacity extends StatelessWidget {
  final Widget child;
  final bool visible;
  final Duration? duration;

  const VisibleOpacity({
    super.key,
    required this.visible,
    required this.child,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      maintainAnimation: true,
      maintainState: true,
      child: AnimatedOpacity(
        duration: duration ?? const Duration(milliseconds: 250),
        opacity: visible ? 1 : 0,
        child: child,
      ),
    );
  }
}
