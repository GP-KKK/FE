import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollableLayout(
      isAppBarVisible: true,
      appBarTitle:
      Text('뉴스기사'),
      backgroundColor: Colors.white,
      innerTopPadding: 0,
      sidePadding: 0,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '대충 제목', //제목
                style:
                textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Text(
                '2024/04/23', //날짜
                style: textTheme.bodySmall!
                    .copyWith(color: ColorTheme.slateColor[500]),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorTheme.slateColor[100]!,
                width: 1,
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('대충 여기에 이제 그냥 본문. 기사 본문')
          ),
      ],
    );  }
}
