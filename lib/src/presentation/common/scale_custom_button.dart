import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScaleCustomButton extends ConsumerStatefulWidget {
  final Widget child;
  final void Function()? onTap;

  const ScaleCustomButton({super.key, required this.child, this.onTap});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScaleCustomButtonState();
}

class _ScaleCustomButtonState extends ConsumerState<ScaleCustomButton>
    with SingleTickerProviderStateMixin {
  final Duration _duration = const Duration(milliseconds: 80);

  late final AnimationController _animationController = AnimationController(
    duration: _duration,
    vsync: this,
    lowerBound: 1.0, // 시작값 1.0
    upperBound: 1.1, // 종료값 0.8
  );

  @override
  void dispose() {
    _animationController.dispose(); // AnimationController 정리
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await _animationController
            .forward()
            .then((value) => _animationController.reverse());

        widget.onTap?.call();
      },
      child: ScaleTransition(
        scale: _animationController,
        child: widget.child,
      ),
    );
  }
}
