import 'package:flutter/material.dart';

class TypewriterTween extends Tween<String> {
  TypewriterTween({String begin = '', String end = ''})
      : super(begin: begin, end: end);

  @override
  String lerp(double t) {
    var cutoff = (end!.length * t).round();
    return end!.substring(0, cutoff);
  }
}

class TypingText extends StatefulWidget {
  final String text;
  final Duration duration;

  const TypingText(
      {super.key,
      required this.text,
      this.duration = const Duration(seconds: 2)});

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<String> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = TypewriterTween(end: widget.text).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Text(
          _animation.value,
          style: textTheme.bodyMedium,
        );
      },
    );
  }
}
