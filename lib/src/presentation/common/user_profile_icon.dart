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
  //final Tier? tier;
  final double? tierIconSize;

  const UserProfileIcon(
      {super.key,
      required this.profileImage,
      this.size,
      this.borderColor,
      this.backgroundColor,
      //this.tier,
      this.tierIconSize});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String imagePath = profileImage;
    bool isNetworkImage = imagePath.startsWith('http');

    if (!isNetworkImage) {
      // 로컬 에셋 이미지 경로 설정
      imagePath = 'assets/images/profile/$profileImage.png';
    }

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
        // if (tier != null)
        //   Positioned(
        //     bottom: 0,
        //     right: 0,
        //     child: Container(
        //       width: tierIconSize ?? 20,
        //       height: tierIconSize ?? 20,
        //       padding: const EdgeInsets.all(1.0),
        //       decoration: ShapeDecoration(
        //         color: ColorTheme.primaryColor[100],
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(100),
        //         ),
        //       ),
        //       child: SvgPicture.asset(
        //         'assets/images/tier/${tier!.name}.svg',
        //         width: tierIconSize ?? 20,
        //         height: tierIconSize ?? 20,
        //       ),
        //     ),
        //   ),
      ],
    );
  }
}
