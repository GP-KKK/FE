import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final GestureTapCallback onTap;

  myContainer({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width, // 너비 설정
        height: height, // 높이 설정
        decoration: BoxDecoration(
          color: Colors.blue, // 배경색 설정
          border: Border.all(
            color: Colors.red, // 윤곽선 색상 설정
            width: 4.0, // 윤곽선 두께 설정
          ),
          borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게 설정
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
