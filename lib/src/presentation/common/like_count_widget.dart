import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LikeCountWidget extends ConsumerWidget {
  final int likeCount;

  const LikeCountWidget({super.key, required this.likeCount});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: ColorTheme.slateColor[200]!),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/svg/heart.svg',
            width: 10,
          ),
          const SizedBox(width: 4),
          Text(
            likeCount.toString(),
            style: textTheme.bodySmall!.copyWith(
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
