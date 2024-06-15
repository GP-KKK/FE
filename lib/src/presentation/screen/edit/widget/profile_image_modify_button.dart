import 'package:fe/src/presentation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileImageModifyButton extends ConsumerWidget {
  final VoidCallback onTap;

  const ProfileImageModifyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(authControllerProvider);

    if (account is Authenticated) {
      String imagePath = account.user.profileImage!;
      bool isNetworkImage = imagePath.startsWith('http');

      if (!isNetworkImage) {
        // 로컬 에셋 이미지 경로 설정
        imagePath = 'assets/images/profile/${account.user.profileImage}.png';
      }

      return GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFDBE1FF),
              ),
              clipBehavior: Clip.antiAlias,
              child: ClipRRect(
                borderRadius: BorderRadius.circular((80) / 2),
                child: isNetworkImage
                    ? Image.network(
                  imagePath,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                )
                    : Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 50,
              child: Container(
                width: 28,
                height: 28,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: ColorTheme.slateColor[300]!),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: ColorTheme.shadow,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/images/svg/modify.svg',
                  width: 12,
                  height: 12,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        //context.go(Routes.login);
      });
      return const SizedBox.shrink();
    }
  }
}