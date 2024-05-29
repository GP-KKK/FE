import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

enum FormatType { countdown, timeLeft }

class TimerWidget extends ConsumerStatefulWidget {
  final DateTime nextSubmitTime;
  final FormatType formatType;
  final TextStyle? textStyle;

  const TimerWidget(
      {super.key,
      required this.nextSubmitTime,
      this.formatType = FormatType.countdown,
      this.textStyle});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends ConsumerState<TimerWidget> {
  Timer? _timer;
  Duration _timeLeft = const Duration();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer?.cancel(); // 이전 타이머가 있다면 취소
    _timeLeft = widget.nextSubmitTime.difference(DateTime.now());

    if (!_timeLeft.isNegative) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _timeLeft = widget.nextSubmitTime.difference(DateTime.now());
          if (_timeLeft.isNegative) {
            _timer?.cancel();
            _timeLeft = const Duration();
          }
        });
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      _formatTime(_timeLeft, widget.formatType),
      style: widget.textStyle ??
          textTheme.bodySmall!.copyWith(
            color: ColorTheme.primaryColor,
          ),
    );
  }

  String _formatTime(Duration duration, FormatType formatType) {
    if (duration.isNegative) {
      return '';
    }

    switch (formatType) {
      case FormatType.countdown:
        return "${duration.inHours.toString().padLeft(2, '0')}:"
            "${(duration.inMinutes % 60).toString().padLeft(2, '0')}:"
            "${(duration.inSeconds % 60).toString().padLeft(2, '0')}";
      case FormatType.timeLeft:
        String timeText = '';
        if (duration.inHours > 0) {
          if(duration.inHours==1){
            timeText += '${duration.inHours} ${Intl.message('hour')} ';
          }else{
            timeText += '${duration.inHours} ${Intl.message('hours')} ';
          }
        }
        int minutes = duration.inMinutes % 60;
        if (minutes > 0 || duration.inHours > 0) {
          if(minutes==1) {
            timeText += '$minutes ${Intl.message('minute')}';
          }else{
            timeText += '$minutes ${Intl.message('minutes')}';
          }
        }
        return timeText;
      default:
        return '';
    }
  }
}
