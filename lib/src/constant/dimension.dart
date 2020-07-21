import 'package:flutter_screenutil/flutter_screenutil.dart';

final ScreenUtil screen = ScreenUtil();
Map<double, double> _width = {};
Map<double, double> _height = {};

double setHeight(double length) => _height.putIfAbsent(length, () => screen.setHeight(length));

double setWidth(double length) => _width.putIfAbsent(length, () => screen.setWidth(length));

void reset() {
  _width.clear();
  _height.clear();
}
