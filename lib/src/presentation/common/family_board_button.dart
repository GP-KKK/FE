import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fe/src/presentation/common/scale_custom_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FamilyBoardButton extends ConsumerWidget {
  final void Function()? onFamilyBoardTap;

  const FamilyBoardButton({super.key, this.onFamilyBoardTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaleCustomButton(
      onTap: onFamilyBoardTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1EBC87E5),
              blurRadius: 3,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svg/home.svg',
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
