import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:intl/intl.dart';

class LikableButtonWidget extends ConsumerStatefulWidget {
  final bool likeStatus;
  final VoidCallback onTap;

  const LikableButtonWidget(
      {super.key, required this.likeStatus, required this.onTap});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LikableButtonWidgetState();
}

class _LikableButtonWidgetState extends ConsumerState<LikableButtonWidget> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: ColorTheme.slateColor[400]!),
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.likeStatus
                  ? 'assets/images/svg/heart_empty.svg'
                  : 'assets/images/svg/heart.svg',
              width: 15,
              height: 15,
            ),
            const SizedBox(width: 4),
            Text(
              Intl.message('like'),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
