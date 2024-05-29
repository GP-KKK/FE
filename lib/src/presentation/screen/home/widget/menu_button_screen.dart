import 'dart:io';

import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/common/scale_custom_button.dart';
import 'package:fe/src/presentation/common/user_profile_icon.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  final String imagePath;

  MenuButton({required this.title, required this.onPressed, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    String  img= imagePath;
    return Container(

      padding: const EdgeInsets.all(20),
      child: ElevatedButton(

          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            //foregroundColor: Colors.white,
            //backgroundColor:,

            minimumSize: Size(100, 170),
            // 버튼의 최소 크기 설정
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            // 버튼의 내부 패딩 설정
            textStyle: TextStyle(fontSize: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // 버튼의 모서리 둥글기 조정
            ),
            // 텍스트 크기 설정
          ),
          child: Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Row의 자식들을 가운데 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 자식들을 세로 방향으로 가운데 정렬

              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 52,
                  height: 52,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$img.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleSmall!.copyWith(
                      color: ColorTheme.slateColor,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}