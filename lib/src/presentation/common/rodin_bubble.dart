import 'package:flutter/material.dart';
import 'package:fe/src/presentation/common/speech_bubble.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class RodinBubble extends StatelessWidget {
  final String message;
  final String? title;
  final TextStyle? messageTextStyle;

  const RodinBubble({
    super.key,
    required this.message,
    this.title,
    this.messageTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _RodinIcon(),
          Expanded(
            child: SpeechBubble(
              tailPosition: TailPosition.left,
              textContent: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: textTheme.displaySmall!.copyWith(
                            color: ColorTheme.primaryColor,
                          ),
                        ),
                      Text(
                        message,
                        style: messageTextStyle ??
                            textTheme.bodyMedium!.copyWith(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RodinIcon extends StatelessWidget {
  const _RodinIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ai_character/rodin_right.png'),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
