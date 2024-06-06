import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';

class CustomPopupButton extends StatelessWidget {
  final String? labelText;
  final String? textValue;
  final String? hintText;
  final VoidCallback onTap;

  const CustomPopupButton(
      {super.key,
      this.labelText,
      this.textValue,
      this.hintText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Text(
              labelText!,
              style: textTheme.displaySmall!.copyWith(
                color: ColorTheme.slateColor[500],
              ),
            ),
          if (labelText != null) const SizedBox(height: 7),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(vertical: 13.0, horizontal: 16.0),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: ColorTheme.slateColor[400]!),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (textValue != null)
                  Expanded(
                    child: Text(textValue!, style: textTheme.bodyMedium),
                  ),
                if (hintText != null && textValue == null)
                  Expanded(
                    child: Text(
                      hintText!,
                      style: textTheme.bodyMedium!.copyWith(
                        color: ColorTheme.slateColor[400],
                      ),
                    ),
                  ),
                SvgPicture.asset(
                  'assets/images/svg/chevron_down.svg',
                  width: 14,
                  height: 14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
