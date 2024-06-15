import 'package:fe/src/presentation/controller/controller.dart';
import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/presentation/screen/loading/loading_screen.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewsScreen extends ConsumerStatefulWidget {
  const NewsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewsScreenState();
  }

class _NewsScreenState extends ConsumerState<NewsScreen> {
  final List<String> newsTitles = [
    "경부 고속도로에서 다중 추돌사고 발생",
    "빗길 교통사고, 차량 10대 충돌",
    "출근길 교차로 충돌사고, 교통체증 발생",
    "택시와 오토바이 충돌, 운전자 부상",
    "고속도로 졸음운전, 화물차 사고 발생",
    "버스 추락 사고, 승객 다수 부상",
    "보행자 무단횡단으로 차량 충돌",
    "도로 결빙으로 인한 교통사고 증가",
    "고속도로 역주행 사고, 차량 충돌",
    "도시 외곽 도로에서 발생한 교통사고",
  ];
  final List<String> day = [
    "2024/04/12",
    "2024/04/12",
    "2024/04/12",
    "2024/04/11",
    "2024/04/11",
    "2024/04/10",
    "2024/04/10",
    "2024/04/09",
    "2024/04/08",
    "2024/04/08",
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final news = ref.watch(newsControllerProvider);

    return Container(
      decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            '뉴스 목록',
            style: textTheme.titleSmall!.copyWith(
              color: ColorTheme.slateColor,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.blueGrey,
          backgroundColor: Colors.white,
        ),
        body: switch (news) {
          AsyncData(:final value) => _buildNewsScreen(value, textTheme),
          _ => const LoadingScreen(),
        }
        // ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(5.0),
        //       child: GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             Navigator.of(context).pushNamed('/news_article');
        //           });
        //         },
        //         child: Stack(
        //           children: [
        //             Container(
        //               constraints: const BoxConstraints(minHeight: 94),
        //               padding: const EdgeInsets.only(
        //                 top: 20,
        //                 left: 10,
        //                 right: 14,
        //                 bottom: 20,
        //               ),
        //               decoration: ShapeDecoration(
        //                 color: Colors.white.withOpacity(0.7),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(16),
        //                 ),
        //                 // shadows: [
        //                 //   if (currentQuest.currentScreen != null)
        //                 //     const BoxShadow(
        //                 //       color: ColorTheme.shadow,
        //                 //       blurRadius: 2,
        //                 //       offset: Offset(0, 1),
        //                 //     )
        //                 // ],
        //               ),
        //               child: Row(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Container(
        //                     margin: const EdgeInsets.only(right: 10),
        //                     width: 52,
        //                     height: 52,
        //                     decoration: const BoxDecoration(
        //                       image: DecorationImage(
        //                         image: AssetImage('assets/images/report.png'),
        //                       ),
        //                     ),
        //                   ),
        //                   Expanded(
        //                     child: Padding(
        //                       padding: const EdgeInsets.only(right: 8.0),
        //                       child: Column(
        //                         mainAxisAlignment: MainAxisAlignment.center,
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             newsTitles[index],
        //                             maxLines: 3,
        //                             overflow: TextOverflow.ellipsis,
        //                             style: textTheme.bodyLarge!.copyWith(
        //                               color: ColorTheme.slateColor,
        //                             ),
        //                           ),
        //                           const SizedBox(height: 10),
        //                           // if (currentQuest.currentScreen == null)
        //                           Text(
        //                             day[index],
        //                             style: textTheme.labelSmall!.copyWith(
        //                               color: ColorTheme.primaryColor,
        //                             ),
        //                           ),
        //                           // if (currentQuest.currentScreen != null)
        //                           // // currentScreen이 null이 아닐 경우
        //                           //   _buildQuestProgressBarOrTimer(quests, currentQuest),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }

  Widget _buildNewsScreen(NewsState news, TextTheme textTheme) {
    return ScrollableLayout(
      isAppBarVisible: true,
      appBarTitle:
      Text(('newsTitle'), style: textTheme.labelMedium),
      backgroundColor: Colors.white,
      innerTopPadding: 0,
      sidePadding: 0,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: news.newsList.map((item) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorTheme.slateColor[100]!,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                onTap: () async {
                  // await ref
                  //     .read(newsControllerProvider.notifier)
                  //     .getNewsDetail(item.id);
                  //
                  // goNextScreen(item.id);
                },
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    item.title,
                    style: textTheme.bodyMedium,
                  ),
                ),
                // subtitle: Text(
                //   DateFormat.yMd(Intl.getCurrentLocale())
                //       .format(item.createdAt),
                //   style: textTheme.bodySmall!.copyWith(
                //     color: ColorTheme.slateColor[500],
                //   ),
                // ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: ColorTheme.slateColor[400],
                ),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                splashColor: ColorTheme.slateColor[50],
                focusColor: ColorTheme.slateColor[50],
              ),
            );
          }).toList(),
        )
      ],
    );
  }


}
