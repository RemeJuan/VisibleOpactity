import 'package:flutter/material.dart';
import 'package:visible_opacity/visible_opacity.dart';

void main() => runApp(VisibleOpacityExample());
class VisibleOpacityExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _VisibleOpacityExampleState();
}

class _VisibleOpacityExampleState extends State<VisibleOpacityExample> {
	bool isVisible = false;
	final animationDuration = Duration(milliseconds: 250);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Vibisle Opacity',
			home: Scaffold(
				body: Column(
					children: [
						VisibleOpacity(
							child: Container(),
							visible: isVisible,
							duration: animationDuration,
						),
						VisibleOpacity(
							child: Container(),
							visible: !isVisible,
							duration: animationDuration,
						),
					],
				),
			),
		);
	}
}