import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double dotSize;
  final double dotSpacing;

  const DottedLine({
    super.key,
    this.height = 1.0,
    this.color = const Color(0xFF94A3B8),
    this.dotSize = 3.0,
    this.dotSpacing = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final dotWidth = dotSize;
        final width = constraints.constrainWidth();
        final dotCount = (width / (dotWidth + dotSpacing)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List<Widget>.generate(dotCount, (_) {
            return SizedBox(
              width: dotWidth,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}