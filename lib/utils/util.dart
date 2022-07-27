import 'dart:ui';

class Info {
  static double? _height;
  static double? _width;

  static set setHeight(double val) => _height = val;
  static set setWidth(double val) => _width = val;

  static get deviceWidth => _width;
  static get deviceHeight => _height;
}

class Utils {
  static final dialRectboxHeight = 226 / 700 * Info.deviceHeight;
}

class CustomCurvesProps {
  Rect bounds;
  double lFactor;
  double hFactor;

  /// [bounds] defines the constrains for the curve.
  /// [hFactor] defines the factor of height in offset for [initialMovement], default value is 2/3.
  /// [lFactor] defines the factor from left in setting [initialMovement], default value is 1.

  CustomCurvesProps({
    required this.bounds,
    this.hFactor = 2 / 3,
    this.lFactor = 1,
  });
  get getInitalMovement => Offset(
        bounds.left * lFactor,
        bounds.height * hFactor,
      );

  changeBounds(bounds) => this.bounds = bounds;
  changeLFactor(double lf) => lFactor = lf;
  changeHFactor(double hf) => hFactor = hf;

  handlePoint(double x, double y) => Offset(x, y);
}
