import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class CustomMonthPicker extends ConsumerStatefulWidget {
  final DateTime minDate;
  final DateTime maxDate;
  final Function(DateTime startTime, DateTime endTime) updateRecordList;
  final String monthFirstDate;

  const CustomMonthPicker(
      {super.key,
      required this.minDate,
      required this.maxDate,
      required this.updateRecordList,
      required this.monthFirstDate});

  @override
  ConsumerState<CustomMonthPicker> createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends ConsumerState<CustomMonthPicker> {
  DateTime selectedMonth = DateTime.now();

  @override
  void initState() {
    super.initState();
    _matchSelectedMonthWithRecordList();
  }

  @override
  void didUpdateWidget(covariant CustomMonthPicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.monthFirstDate != widget.monthFirstDate) {
      _matchSelectedMonthWithRecordList();
    }
  }

  void _matchSelectedMonthWithRecordList() {
    final firstRecordDate = DateTime.parse(widget.monthFirstDate);
    setState(() {
      selectedMonth = DateTime(firstRecordDate.year, firstRecordDate.month);
    });
  }

  bool get _canDecrement => selectedMonth
      .isAfter(DateTime(widget.minDate.year, widget.minDate.month));
  bool get _canIncrement => selectedMonth
      .isBefore(DateTime(widget.maxDate.year, widget.maxDate.month));

  void _decrementMonth() {
    if (_canDecrement) {
      setState(() {
        selectedMonth = DateTime(selectedMonth.year, selectedMonth.month - 1);

        // 이전 달의 첫째 날과 마지막 날 계산
        final startTime = DateTime(selectedMonth.year, selectedMonth.month, 1);
        final endTime =
            DateTime(selectedMonth.year, selectedMonth.month + 1, 0);

        // 이전 달의 첫째 날과 마지막 날을 기준으로 데이터 업데이트
        widget.updateRecordList(startTime, endTime);
      });
    }
  }

  void _incrementMonth() {
    if (_canIncrement) {
      setState(() {
        selectedMonth = DateTime(selectedMonth.year, selectedMonth.month + 1);

        // 다음 달의 첫째 날과 마지막 날 (또는 오늘 날짜) 계산
        final startTime = DateTime(selectedMonth.year, selectedMonth.month, 1);
        var endTime = DateTime(selectedMonth.year, selectedMonth.month + 1, 0);
        final today = DateTime.now();
        if (endTime.isAfter(today)) {
          endTime = today;
        }

        // 다음 달의 첫째 날과 마지막 날을 기준으로 데이터 업데이트
        widget.updateRecordList(startTime, endTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: _canDecrement
                ? ColorTheme.slateColor[500]
                : ColorTheme.slateColor[200],
            size: 30,
          ),
          onPressed: _canDecrement ? _decrementMonth : null,
        ),
        Text(
          DateFormat.yMMM().format(selectedMonth),
          style: textTheme.headlineLarge,
        ),
        IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: _canIncrement
                ? ColorTheme.slateColor[500]
                : ColorTheme.slateColor[200],
            size: 30,
          ),
          onPressed: _canIncrement ? _incrementMonth : null,
        ),
      ],
    );
  }
}
