import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class NoteBackgroundWidget extends StatelessWidget {
  final List<Widget> children;

  const NoteBackgroundWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width - 40,
              constraints: const BoxConstraints(
                minHeight: 60,
              ),
              padding: const EdgeInsets.only(
                top: 22,
                left: 16,
                right: 16,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF8FAFC),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                border: Border(
                  left:
                      BorderSide(width: 1, color: ColorTheme.slateColor[300]!),
                  top: BorderSide(width: 1, color: ColorTheme.slateColor[300]!),
                  right:
                      BorderSide(width: 1, color: ColorTheme.slateColor[300]!),
                  bottom: BorderSide.none,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
            SizedBox(
              height: 22,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 19,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8FAFC),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        border: Border(
                          left: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                          top: BorderSide.none,
                          right: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                          bottom: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 16,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8FAFC),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        border: Border(
                          left: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                          top: BorderSide.none,
                          right: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                          bottom: BorderSide(
                              width: 1, color: ColorTheme.slateColor[300]!),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(child: SvgPicture.asset('assets/images/svg/note_binder.svg'))
      ],
    );
  }
}
