import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('뉴스 목록'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/news_article');
                  });
                },
                child: Stack(
                  children: [
                    Container(
                      constraints: const BoxConstraints(minHeight: 94),
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 14,
                        bottom: 20,
                      ),
                      decoration: ShapeDecoration(
                        color:  Colors.white.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        // shadows: [
                        //   if (currentQuest.currentScreen != null)
                        //     const BoxShadow(
                        //       color: ColorTheme.shadow,
                        //       blurRadius: 2,
                        //       offset: Offset(0, 1),
                        //     )
                        // ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 52,
                            height: 52,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/report.png'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '꽁꽁 얼어붙은 한강 위로 고양이가 걸어다닙니다.',
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.labelLarge!.copyWith(
                                      color: ColorTheme.slateColor,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  // if (currentQuest.currentScreen == null)
                                  //   Text(
                                  //     Intl.message('questCompletedExclamation'),
                                  //     style: textTheme.labelSmall!.copyWith(
                                  //       color: ColorTheme.primaryColor,
                                  //     ),
                                  //   ),
                                  // if (currentQuest.currentScreen != null)
                                  // // currentScreen이 null이 아닐 경우
                                  //   _buildQuestProgressBarOrTimer(quests, currentQuest),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
