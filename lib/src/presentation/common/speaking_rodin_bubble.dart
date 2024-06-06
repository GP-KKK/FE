import 'package:flutter/material.dart';
import 'package:fe/src/presentation/common/speech_bubble.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:intl/intl.dart';

class SpeackingRodinBubble extends StatelessWidget {
  final String textContent;
  final bool showRodinName;

  const SpeackingRodinBubble({
    super.key,
    required this.textContent,
    this.showRodinName = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 1.0),
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/ai_character/rodin_right.png',
              ),
            ),
            shape: BoxShape.circle,
          ),
        ),
        SpeechBubble(
          tailPosition: TailPosition.top,
          textContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showRodinName)
                Text(
                  Intl.message('doctorRodin'),
                  style: textTheme.headlineSmall!
                      .copyWith(color: ColorTheme.primaryColor),
                ),
              if (showRodinName)
                const SizedBox(
                  height: 5.0,
                ),
              Text(
                textContent,
                style: textTheme.bodyMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
