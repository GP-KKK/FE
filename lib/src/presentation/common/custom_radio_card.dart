import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class CustomRadioCard extends StatelessWidget {
  final dynamic item;
  final dynamic selectedItem;
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CustomRadioCard({
    super.key,
    required this.item,
    required this.selectedItem,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          color:
              item == selectedItem ? ColorTheme.primaryColor[50] : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: item == selectedItem
                ? ColorTheme.primaryColor
                : ColorTheme.slateColor[400]!,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 80.0, height: 80.0),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: textTheme.headlineMedium!.copyWith(
                color: item == selectedItem
                    ? ColorTheme.primaryColor
                    : ColorTheme.slateColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
