import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/util.dart';

const pi = 3.14;

class CustomCurvePainter extends CustomPainter {
  double lOffset;
  double tOffset;
  double rectWidth;
  double rectHeight;

  CustomCurvePainter(
    this.lOffset,
    this.tOffset,
    this.rectWidth,
    this.rectHeight,
  );
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.cyanAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final curvedPath = CustomBenzierCurves.pathOfCurve(
      canvas,
      Rect.fromLTWH(
        lOffset,
        tOffset,
        rectWidth,
        rectHeight,
      ),
    );
    canvas.drawPath(curvedPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomBenzierCurves {
  static pathOfCurve(Canvas canvas, Rect bounds) {
    final customCurveProps = CustomCurvesProps(bounds: bounds);

    final handlePoint1 = customCurveProps.handlePoint(
      bounds.left + bounds.right * 0.3,
      bounds.top * -0.35,
    );

    final handlePoint2 = customCurveProps.handlePoint(
      bounds.right * 4 / 5,
      bounds.bottom * 0.85,
    );

    return Path()
      ..moveTo(
        customCurveProps.getInitalMovement.dx,
        customCurveProps.getInitalMovement.dy,
      )
      ..cubicTo(
        handlePoint1.dx,
        handlePoint1.dy,
        handlePoint2.dx,
        handlePoint2.dy,
        bounds.right - 6,
        -10,
      )
      ..quadraticBezierTo(
        bounds.right - 2,
        -20,
        bounds.right,
        -10,
      )
      ..addPath(
        Path()
          ..moveTo(
            customCurveProps.getInitalMovement.dx,
            customCurveProps.getInitalMovement.dy - 30,
          )
          ..cubicTo(
            handlePoint1.dx - 25,
            handlePoint1.dy - 25,
            handlePoint2.dx + 20,
            handlePoint2.dy - 60,
            bounds.right - 6,
            -10,
          )
          ..quadraticBezierTo(
            bounds.right - 2,
            -20,
            bounds.right,
            -10,
          ),
        Offset.zero,
      )
      ..addPath(
        Path()
          ..moveTo(
            customCurveProps.getInitalMovement.dx - 3,
            customCurveProps.getInitalMovement.dy - 30,
          )
          ..cubicTo(
            handlePoint1.dx - 25,
            handlePoint1.dy + 20,
            handlePoint2.dx + 20,
            handlePoint2.dy - 135,
            bounds.right - 4,
            20,
          )
          ..quadraticBezierTo(
            bounds.right - 2,
            0,
            bounds.right,
            10,
          ),
        Offset.zero,
      );
  }
}
