# visible_opacity

A pluggin, similar to the provided `AnimatedOpacity`, but more useful in cases when you wish to be able to control the
transition between more than 2 items.

## Getting Started

```dart
import 'package:visible_opacity/visible_opacity.dart';

Column(
    children: [
      VisibleOpacity(
        child: Container(),
        visible: isVisible,
        duration: Duration(milliseconds: 200),
      ),
      VisibleOpacity(
        child: Container(),
        visible: !isVisible,
        duration: Duration(milliseconds: 200),
      ),
    ],
)
```
