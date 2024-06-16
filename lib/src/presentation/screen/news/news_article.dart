import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsArticle extends StatefulWidget {
  final String url;

  const NewsArticle({super.key, required this.url});

  @override
  _NewsArticleState createState() => _NewsArticleState();
}

class _NewsArticleState extends State<NewsArticle> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableLayout(
        isAppBarVisible: true,
        appBarTitle: Text(
          '뉴스 기사',
          style: textTheme.titleSmall!.copyWith(
            color: ColorTheme.slateColor,
          ),
        ),
        backgroundColor: Colors.white,
        innerTopPadding: 0,
        sidePadding: 0,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '경부 고속도로에서 다중 추돌사고 발생', //제목
                  style: textTheme.headlineLarge,
                ),
                const SizedBox(height: 8),
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
          SizedBox(
            height: 500,
            ),
        ]);
  }
}
