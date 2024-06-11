import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({super.key});

  final String article = '''
<article>
  <p>2024년 5월 30일 오전 10시경, 경부 고속도로 상행선에서 다중 추돌사고가 발생했습니다. 이번 사고로 인해 최소 5대의 차량이 충돌하여 교통이 마비되었으며, 사고 현장은 큰 혼잡을 빚고 있습니다.</p>
  <p>경찰과 소방 당국에 따르면, 사고는 한 차량의 급정거로 인해 발생했으며, 이로 인해 뒤따르던 차량들이 미처 멈추지 못하고 연쇄적으로 충돌하게 된 것으로 전해졌습니다. 이번 사고로 인해 3명이 중상을 입고, 여러 명이 경상을 입어 인근 병원으로 긴급 이송되었습니다.</p>
  <p>사고 현장에서는 구조 작업과 함께 사고 차량의 처리가 진행되고 있으며, 경찰은 정확한 사고 경위를 조사 중에 있습니다. 또한, 교통 혼잡을 줄이기 위해 사고 구간을 우회할 것을 운전자들에게 당부하고 있습니다.</p>
  <p>이번 사고는 최근 빈번하게 발생하고 있는 고속도로 상의 교통사고 중 하나로, 운전자들의 주의와 안전운전의 중요성이 다시 한번 강조되고 있습니다. 경찰은 졸음운전, 과속, 안전거리 미확보 등의 위험 요소를 피하기 위해 운전자들에게 지속적인 주의를 당부하고 있습니다.</p>
</article>
''';

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
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '경부 고속도로에서 다중 추돌사고 발생', //제목
                style: textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Text(
                '2024/04/12', //날짜
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
            child: Html(
              data: article,
            )),
      ],
    );
  }
}
