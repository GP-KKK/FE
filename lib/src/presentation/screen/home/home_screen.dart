import 'dart:io';

import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/common/scale_custom_button.dart';
import 'package:fe/src/presentation/common/user_profile_icon.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

UserModel dummy_user = UserModel(
    email: '123kim003@gmail.com',
    name: '김성민',
    feel: "건들지마소",
    profileImage: 'cat');

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildHomeScreen();
  }

  Widget _buildHomeScreen() {
    return Container(
      decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
      child: Scaffold(

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.transparent,
              ),
              leading: Container(),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              scrolledUnderElevation: 0.0,
              toolbarHeight: 0,
              titleSpacing: 0,
              floating: true,
              pinned: true,
              flexibleSpace: flexibleSpace,
              bottom: bottom(dummy_user),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  MenuButton(
                    title: '뉴스보기',
                    onPressed: () {
                      // 뉴스보기 페이지로 이동
                      setState(() {
                        Navigator.of(context).pushNamed('/news_list');
                      });

                    },
                  ),
                  MenuButton(
                    title: '지도',
                    onPressed: () {
                      // 지도 페이지로 이동
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: MenuButton(
                          title: 'QR 찍기',
                          onPressed: () {
                            // QR 찍기 페이지로 이동
                          },
                        ),
                      ),
                      Expanded(
                        child: MenuButton(
                          title: '채팅',
                          onPressed: () {
                            // QR 찍기 페이지로 이동
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

FlexibleSpaceBar get flexibleSpace {
  return FlexibleSpaceBar(
    background: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFF1E9FF), Color(0x00F1E9FF)],
        ),
      ),
      height: 0,
    ),
  );
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // 배경 색상 설정
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.bottomLeft,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '김경민',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Text(
            '바보',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget bottom(UserModel user) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(72.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: Platform.isIOS
          ? null
          : const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFFF1E9FF), Color(0x00F1E9FF)],
              ),
            ),
      child: Row(
        children: [
          if (user != null)
            Expanded(
              child: _ProfileButton(user: user),
            ),
        ],
      ),
    ),
  );
}

class _ProfileButton extends StatelessWidget {
  final UserModel user;

  const _ProfileButton({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    //Sentry에 전달될 사용자 정보

    final textTheme = Theme.of(context).textTheme;

    return ScaleCustomButton(
      onTap: () {
        //context.push(Routes.myPage);
      },
      child: Container(
        constraints: const BoxConstraints(minHeight: 72),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: ShapeDecoration(
          color: const Color(0xFFF4F0FF),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(80),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1EBC87E5),
              blurRadius: 3,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            if (user.profileImage != null)
              UserProfileIcon(
                size: 56,
                profileImage: user.profileImage!,
              ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (user.feel != null)
                    Text(
                      user.feel,
                      style: textTheme.labelSmall!.copyWith(
                        color: ColorTheme.slateColor[600],
                      ),
                    ),
                  Text(user.name, style: textTheme.displaySmall),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  MenuButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
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
        child: Text(title),
      ),
    );
  }
}
