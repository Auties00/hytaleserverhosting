import 'package:flutter/material.dart';

class BitmapCache extends StatelessWidget {
  BitmapCache({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => FutureBuilder<double>(
        future: Future<double>.value(1),
        builder: (BuildContext context, AsyncSnapshot<double> snapshot) =>
            Transform.scale(
          scale: snapshot.hasData ? snapshot.data : 0.0001,
          alignment: Alignment.topLeft,
          child: RepaintBoundary(child: child),
        ),
      );
}
