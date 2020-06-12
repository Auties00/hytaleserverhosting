import 'package:flutter/material.dart';

class CustomScrollPhysics extends ScrollPhysics {
  List<double> size;

  CustomScrollPhysics({double navigationBarSize, double announcementSize, double videoSize, double dividerSize, double introductionSize, double featuresSize, double pricingSize, double footerSize, ScrollPhysics parent}) : super(parent: parent){
    size = [
      navigationBarSize,
      announcementSize,
      videoSize,
      dividerSize,
      introductionSize,
      dividerSize,
      featuresSize,
      dividerSize,
      pricingSize,
      footerSize
    ];
  }

  CustomScrollPhysics._internal({this.size, ScrollPhysics parent}) : super(parent: parent);

  @override
  CustomScrollPhysics applyTo(ScrollPhysics ancestor) {
    return CustomScrollPhysics._internal(
        size: size,
        parent: buildParent(ancestor)
    );
  }

  double _getPage(ScrollPosition position) {
    var toReturn = -1;
    var cache = position.pixels;
    while(cache > 0){
      toReturn++;
      cache -= size[toReturn];
    }
    
    return toReturn.toDouble();
  }

  double _getPixels(double page) {
    var pixels = 0.0;
    for(int x = 0; x <= page; x++){
      pixels += size[x];
    }

    return pixels;
  }

  double _getTargetPixels(ScrollPosition position, Tolerance tolerance, double velocity) {
    double page = _getPage(position);
    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }
    return _getPixels(page.roundToDouble());
  }

  @override
  Simulation createBallisticSimulation(ScrollMetrics position, double velocity) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) || (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = this.tolerance;
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      print("LOL");
      return ScrollSpringSimulation(spring, size.reduce((value, element) => value + element) - target, target, velocity, tolerance: tolerance);
    }

    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
