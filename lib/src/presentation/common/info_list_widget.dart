import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:intl/intl.dart';

class InfoListWidget extends ConsumerWidget {
  final Map<int, String> infoMap;

  const InfoListWidget({super.key, required this.infoMap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    List<Widget> infoWidgets = infoMap.entries.map((entry) {
      return buildInfoRow(entry.value, textTheme);
    }).toList();

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(14),
      decoration: ShapeDecoration(
        color: ColorTheme.slateColor[50],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        children: infoWidgets,
      ),
    );
  }

  Widget buildInfoRow(String text, TextTheme textTheme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            Icons.info_outline_rounded,
            size: 16,
            color: ColorTheme.slateColor[500],
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            Intl.message(text),
            style: textTheme.bodySmall!
                .copyWith(color: ColorTheme.slateColor[500]!),
          ),
        ),
      ],
    );
  }
}
