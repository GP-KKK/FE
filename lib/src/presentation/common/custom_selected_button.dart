import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class CustomSelectedButton extends StatefulWidget {
  final bool isSelected;
  final bool isDisabled;
  final double height;
  final VoidCallback onPressed;
  final Widget buttonContent;

  const CustomSelectedButton({
    super.key,
    this.isSelected = false,
    this.isDisabled = false,
    this.height = 38.0,
    required this.onPressed,
    required this.buttonContent,
  });

  @override
  State createState() => _CustomSelectedButtonState();
}

class _CustomSelectedButtonState extends State<CustomSelectedButton> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = widget.isDisabled
        ? ColorTheme.slateColor[100]! // 비활성화 상태일 때의 배경색
        : widget.isSelected
            ? ColorTheme.primaryColor[50]! // 선택된 상태일 때의 배경색
            : Colors.white; // 선택되지 않은 상태일 때의 배경색

    Color borderColor = widget.isDisabled
        ? ColorTheme.slateColor[300]! // 비활성화 상태일 때의 테두리 색
        : widget.isSelected
            ? ColorTheme.primaryColor // 선택된 상태일 때의 테두리 색
            : ColorTheme.slateColor[400]!; // 선택되지 않은 상태일 때의 테두리 색

    return GestureDetector(
      onTap: widget.isDisabled ? null : widget.onPressed,
      child: Container(
        width: double.infinity,
        height: widget.height,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: widget.buttonContent,
      ),
    );
  }
}
