import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

enum ButtonType { fill, outline, text }

class ButtonSize {
  final double height;
  final EdgeInsets padding;
  final double borderRadius;

  const ButtonSize(
      {required this.height,
      required this.padding,
      required this.borderRadius});

  static ButtonSize xs = const ButtonSize(
    height: 26,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    borderRadius: 6,
  );
  static ButtonSize sm = const ButtonSize(
    height: 30,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    borderRadius: 6,
  );
  static ButtonSize md = const ButtonSize(
    height: 38,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    borderRadius: 8,
  );
  static ButtonSize lg = const ButtonSize(
    height: 48,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    borderRadius: 8,
  );
  static ButtonSize xl = const ButtonSize(
    height: 48,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    borderRadius: 10,
  );
}

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? customColor;
  final ButtonType buttonType;
  final ButtonSize buttonSize;
  final Widget buttonContent;
  final double? width;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonSize,
    required this.buttonContent,
    this.customColor,
    this.buttonType = ButtonType.fill,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: buttonSize.height,
      child: buttonType == ButtonType.fill
          ? ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                padding: buttonSize.padding,
                foregroundColor: ColorTheme.primaryColor[700],
                backgroundColor: customColor ?? ColorTheme.primaryColor,
                disabledBackgroundColor: ColorTheme.slateColor[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(buttonSize.borderRadius),
                ),
              ),
              child: buttonContent)
          : buttonType == ButtonType.outline
              ? OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(
                    padding: buttonSize.padding,
                    foregroundColor:
                        customColor ?? ColorTheme.primaryColor[100],
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: ColorTheme.slateColor[100],
                    side: BorderSide(
                        color: customColor ?? ColorTheme.slateColor[400]!),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(buttonSize.borderRadius),
                    ),
                  ),
                  child: buttonContent)
              : TextButton(
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                    padding: buttonSize.padding,
                    foregroundColor:
                        customColor ?? ColorTheme.primaryColor[100],
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: buttonContent),
    );
  }
}
