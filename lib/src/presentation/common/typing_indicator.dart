import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

import 'package:lottie/lottie.dart';

class TypingIndicator extends StatelessWidget {
  const TypingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: ColorTheme.slateColor[200]!,
          width: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorTheme.slateColor[200]!.withOpacity(0.5),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Lottie.asset(
        'assets/animations/ani_typing_indicator.json',
        width: 40,
        height: 8,
      ),
    );
  }
}
