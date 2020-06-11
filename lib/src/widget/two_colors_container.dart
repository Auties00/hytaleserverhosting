import 'package:flutter/material.dart';

class TwoColorsContainer extends StatelessWidget {
  final Color background;
  final Color fill;
  final Widget child;

  const TwoColorsContainer({this.background, this.fill, this.child});

  @override
  Widget build(BuildContext context) {
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 66.66666; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return Container(
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          stops: stops,
          end: Alignment.centerLeft,
          begin: Alignment.centerRight,
        ),
      ),
    );
  }
}
