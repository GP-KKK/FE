import 'package:flutter/material.dart';

class AnimatedVisibility extends StatelessWidget {
  final bool isVisible;
  final Widget child;
  final Duration duration;
  final VoidCallback? onEnd;

  const AnimatedVisibility({
    super.key,
    required this.isVisible,
    required this.child,
    this.onEnd,
    this.duration = const Duration(seconds: 1),
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0.0,
      duration: duration,
      onEnd: onEnd,
      child: AnimatedContainer(
        duration: duration,
        curve: Curves.easeInOut,
        height: isVisible ? null : 0,
        child: isVisible ? child : null,
      ),
    );
  }
}
