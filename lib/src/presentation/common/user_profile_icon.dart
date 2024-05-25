import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfileIcon extends ConsumerWidget {
  final String profileImage;
  final double? size;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? tierIconSize;

  const UserProfileIcon(
      {super.key,
        required this.profileImage,
        this.size,
        this.borderColor,
        this.backgroundColor,
        this.tierIconSize});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String imagePath = profileImage;
    bool isNetworkImage = imagePath.startsWith('http');

    if (!isNetworkImage) {
      // 로컬 에셋 이미지 경로 설정
      imagePath = 'assets/images/profile/$profileImage.png';
    }
    print(profileImage);

    return Stack(
      children: [
        Container(
          width: size ?? 40,
          height: size ?? 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? Colors.white,
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: ClipRRect(
            borderRadius: BorderRadius.circular((size ?? 40) / 2),
            child: isNetworkImage
                ? Image.network(
              imagePath,
              fit: BoxFit.cover,
              width: size ?? 40,
              height: size ?? 40,
            )
                : Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: size ?? 40,
              height: size ?? 40,
            ),
          ),
        ),
      ],
    );
  }
}
