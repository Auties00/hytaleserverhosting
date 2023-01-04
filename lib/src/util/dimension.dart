import 'package:scale/scale.dart';

T setHeight<T extends num>(T length) => Scale.scaleVertically(length) as T;

T setWidth<T extends num>(T length) => Scale.scaleHorizontally(length) as T;