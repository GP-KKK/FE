import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class TouchableHighlightButton extends ConsumerStatefulWidget {
  final Color borderColor;
  final double borderRadius;
  final void Function()? onTap;
  final Widget child;

  const TouchableHighlightButton(
      {super.key,
      required this.borderColor,
      required this.borderRadius,
      required this.onTap,
      required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TouchableHighlightButtonState();
}

class _TouchableHighlightButtonState
    extends ConsumerState<TouchableHighlightButton> {
  Color _bgColor = Colors.white; // 배경색 상태 관리

  void _changeColorOnTapDown(TapDownDetails details) {
    setState(() {
      _bgColor = ColorTheme.slateColor[50]!; // 클릭 시 배경색 변경
    });
  }

  void _resetColorOnTapUp(TapUpDetails details) {
    setState(() {
      _bgColor = Colors.white; // 클릭 해제 시 배경색 복원
    });
  }

  void _resetColorOnTapCancel() {
    setState(() {
      _bgColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onTapDown: _changeColorOnTapDown,
      onTapUp: _resetColorOnTapUp,
      onTapCancel: _resetColorOnTapCancel,
      child: Ink(
        decoration: ShapeDecoration(
          color: _bgColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: widget.borderColor,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
