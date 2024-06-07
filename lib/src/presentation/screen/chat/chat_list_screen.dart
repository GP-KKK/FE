import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../shared/theme/color_theme.dart';

class ChatListScreen extends StatefulWidget {
  @override
  State<ChatListScreen> createState() => _ChatListState();
}

class _ChatListState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '채팅 목록',
            style: textTheme.titleSmall!.copyWith(
              color: ColorTheme.slateColor,
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.blueGrey,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/chat');
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
                          color: Colors.white.withOpacity(0.7),
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
                                  image: AssetImage('assets/images/talk.png'),
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
                                      '사용자 ${index}.',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodyLarge!.copyWith(
                                        color: ColorTheme.slateColor,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    // if (currentQuest.currentScreen == null)
                                    Text(
                                      '대화 내용',
                                      style: textTheme.labelSmall!.copyWith(
                                        color: ColorTheme.primaryColor,
                                      ),
                                    ),
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
        )

        // Container(
        //   decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
        //
        //   child: ListView.builder(
        //     itemCount: 20,
        //     itemBuilder: (context, index) {
        //       return Container(
        //
        //         width: double.infinity, // 너비를 화면의 최대 크기로 설정
        //         height: 80.0, // 높이를 80으로 설정
        //         margin: EdgeInsets.symmetric(
        //             vertical: 4.0, horizontal: 8.0), // 항목 사이에 약간의 간격을 추가
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게 설정
        //           border: Border.all(color: Colors.black, width: 1.0), // 윤곽선 설정
        //         ),
        //         child: Center(
        //           child: GestureDetector(
        //             onTap: () {
        //               setState(() {
        //                 Navigator.of(context).pushNamed('/chat');
        //               });
        //             },
        //             child: Text(
        //               'Chat ${(index + 1)}', // 아이템 번호 표시
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontSize: 18.0,
        //               ),
        //             ),
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        );
  }
}
