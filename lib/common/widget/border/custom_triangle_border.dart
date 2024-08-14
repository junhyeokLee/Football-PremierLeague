import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTriangleBorder extends OutlinedBorder {
  final double borderRadius;
  final Color borderColor;

  CustomTriangleBorder({
    this.borderRadius = 8.0,
    this.borderColor = Colors.transparent,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(0);

  @override
  ShapeBorder scale(double t) {
    return CustomTriangleBorder(
      borderRadius: borderRadius * t,
      borderColor: borderColor,
    );
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    final radius = borderRadius;
    final shapeSize = radius * 1.5; // 도형의 크기
    final triangleOffset = rect.height * 0.5; // 삼각형의 꼭지점이 버튼 높이의 30% 아래에 위치

    // 왼쪽 도형
    path.moveTo(rect.left + shapeSize, rect.top);
    path.lineTo(rect.left, rect.top + triangleOffset);
    path.lineTo(rect.left + shapeSize, rect.bottom);
    path.lineTo(rect.left + shapeSize, rect.top);

    // 버튼의 왼쪽 및 오른쪽 부분
    path.addRect(Rect.fromLTWH(rect.left + shapeSize, rect.top, rect.width - 2 * shapeSize, rect.height));

    // 오른쪽 도형
    path.moveTo(rect.right - shapeSize, rect.top);
    path.lineTo(rect.right, rect.top + triangleOffset);
    path.lineTo(rect.right - shapeSize, rect.bottom);
    path.lineTo(rect.right - shapeSize, rect.top);

    path.close(); // 경로를 닫기

    return path;
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    final radius = borderRadius;
    final shapeSize = radius * 24; // 도형의 크기

    // 왼쪽 도형
    path.moveTo(rect.left + shapeSize, rect.top);
    path.lineTo(rect.left, rect.top + radius);
    path.lineTo(rect.left + shapeSize, rect.bottom - radius);
    path.lineTo(rect.left + shapeSize, rect.top);

    // 버튼의 왼쪽 및 오른쪽 부분
    path.addRect(Rect.fromLTWH(rect.left + shapeSize, rect.top, rect.width - 2 * shapeSize, rect.height));

    // 오른쪽 도형
    path.moveTo(rect.right - shapeSize, rect.top);
    path.lineTo(rect.right, rect.top + radius);
    path.lineTo(rect.right - shapeSize, rect.bottom - radius);
    path.lineTo(rect.right - shapeSize, rect.top);

    path.close(); // 경로를 닫기

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke;
    final path = getOuterPath(rect, textDirection: textDirection);
    canvas.drawPath(path, paint);
  }

  @override
  OutlinedBorder copyWith({BorderSide? side}) {
    return CustomTriangleBorder(
      borderRadius: this.borderRadius,
      borderColor: this.borderColor,
    );
  }
}