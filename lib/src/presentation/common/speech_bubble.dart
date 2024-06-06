import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

enum TailPosition { top, bottom, left, right, centerBottom, rightBottom }

class SpeechBubble extends StatelessWidget {
  final Widget textContent;
  final TailPosition? tailPosition;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? padding;
  final bool isShadowVisible;

  const SpeechBubble({
    super.key,
    required this.textContent,
    this.tailPosition,
    this.borderColor,
    this.backgroundColor,
    this.padding,
    this.isShadowVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = EdgeInsets.zero;
    double? left;
    double? top;
    double? right;
    double? bottom;

    if (tailPosition != null) {
      switch (tailPosition!) {
        case TailPosition.top:
          margin = const EdgeInsets.only(top: 7.0);
          top = 1;
          left = 30;
          break;
        case TailPosition.bottom:
          margin = const EdgeInsets.only(bottom: 7.0);
          bottom = 1;
          left = 30;
          break;
        case TailPosition.rightBottom:
          margin = const EdgeInsets.only(bottom: 7.0);
          bottom = 1;
          right = 30;
          break;
        case TailPosition.centerBottom:
          margin = const EdgeInsets.only(bottom: 7.0);
          bottom = 1;
          left = 120;
          break;
        case TailPosition.left:
          margin = const EdgeInsets.only(left: 7.0);
          left = 1;
          top = 10;
          break;
        case TailPosition.right:
          margin = const EdgeInsets.only(right: 7.0);
          right = 1;
          top = 10;
          break;
      }
    }

    return Stack(
      children: [
        Container(
          width: TailPosition.centerBottom == tailPosition ? 240 : null,
          margin: margin,
          padding: EdgeInsets.all(padding ?? 14.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: borderColor ?? ColorTheme.slateColor[200]!,
              width: 1.0,
            ),
            boxShadow: [
              if (isShadowVisible)
                BoxShadow(
                  color: ColorTheme.slateColor[200]!.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
            ],
          ),
          child: textContent,
        ),
        if (tailPosition != null)
          Positioned(
            left: left,
            top: top,
            right: right,
            bottom: bottom,
            child: CustomPaint(
              painter: TrianglePainter(
                tailPosition: tailPosition!,
                borderColor: borderColor,
                backgroundColor: backgroundColor,
              ),
              size: const Size(7, 7), // 삼각형의 크기를 지정
            ),
          ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  final TailPosition tailPosition;
  final Color? borderColor;
  final Color? backgroundColor;

  TrianglePainter({
    required this.tailPosition,
    this.borderColor,
    this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 삼각형 채우기를 위한 페인트
    final fillPaint = Paint()
      ..color = backgroundColor ?? Colors.white
      ..style = PaintingStyle.fill;

    // 테두리를 위한 페인트
    final borderPaint = Paint()
      ..color = borderColor ?? ColorTheme.slateColor[200]!
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    // 삼각형 경로 정의
    final path = Path();
    switch (tailPosition) {
      case TailPosition.top:
        path.moveTo(size.width / 2, 0);
        path.lineTo(0, size.height);
        path.lineTo(size.width, size.height);
        canvas.drawLine(
            Offset(size.width / 2, 0), Offset(0, size.height), borderPaint);
        canvas.drawLine(Offset(size.width / 2, 0),
            Offset(size.width, size.height), borderPaint);
        break;
      case TailPosition.bottom:
        path.moveTo(size.width / 2, size.height);
        path.lineTo(0, 0);
        path.lineTo(size.width, 0);
        canvas.drawLine(Offset(size.width / 2, size.height), const Offset(0, 0),
            borderPaint);
        canvas.drawLine(Offset(size.width / 2, size.height),
            Offset(size.width, 0), borderPaint);
        break;
      case TailPosition.rightBottom:
        path.moveTo(size.width / 2, size.height);
        path.lineTo(0, 0);
        path.lineTo(size.width, 0);
        canvas.drawLine(Offset(size.width / 2, size.height), const Offset(0, 0),
            borderPaint);
        canvas.drawLine(Offset(size.width / 2, size.height),
            Offset(size.width, 0), borderPaint);
        break;
      case TailPosition.centerBottom:
        path.moveTo(size.width / 2, size.height);
        path.lineTo(0, 0);
        path.lineTo(size.width, 0);
        canvas.drawLine(Offset(size.width / 2, size.height), const Offset(0, 0),
            borderPaint);
        canvas.drawLine(Offset(size.width / 2, size.height),
            Offset(size.width, 0), borderPaint);
        break;
      case TailPosition.left:
        path.moveTo(0, size.height / 2);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        canvas.drawLine(
            Offset(0, size.height / 2), Offset(size.width, 0), borderPaint);
        canvas.drawLine(Offset(0, size.height / 2),
            Offset(size.width, size.height), borderPaint);
        break;
      case TailPosition.right:
        path.moveTo(size.width, size.height / 2);
        path.lineTo(0, 0);
        path.lineTo(0, size.height);
        canvas.drawLine(Offset(size.width, size.height / 2), const Offset(0, 0),
            borderPaint);
        canvas.drawLine(Offset(size.width, size.height / 2),
            Offset(0, size.height), borderPaint);
        break;
    }

    path.close();
    canvas.drawPath(path, fillPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
