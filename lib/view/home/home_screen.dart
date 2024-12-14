import 'dart:io';
import 'package:car2/viewmodel/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';
import 'menu_button.dart';

class HomeScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final user = authController.user.value; // 유저 정보 가져오기

    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.transparent,
              ),
              leading: Container(),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              toolbarHeight: 0,
              floating: true,
              pinned: true,
              flexibleSpace: _buildUserProfile(user),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                MenuButton(
                  title: '지도',
                  onPressed: () => Get.toNamed('/map'),
                  imagePath: 'car',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: MenuButton(
                        title: 'QR 찍기',
                        onPressed: () => Get.toNamed('/qr_code'),
                        imagePath: 'car',
                      ),
                    ),
                    Expanded(
                      child: MenuButton(
                        title: '채팅',
                        onPressed: () => Get.toNamed('/chat_list'),
                        imagePath: 'car',
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  // 유저 프로필 UI 생성
  Widget _buildUserProfile(UserModel? user) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: user?.profileImage != null
                  ? NetworkImage(user!.profileImage!)
                  : const AssetImage('assets/images/default_avatar.png')
              as ImageProvider,
              radius: 36,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  user?.feel ?? '상태 메세지 없음',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  user?.name ?? '사용자 이름',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.settings, size: 36),
              onPressed: () => Get.toNamed('/setting'),
            ),
          ],
        ),
      ),
    );
  }
}
