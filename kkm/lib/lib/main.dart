import 'package:flutter/material.dart';
import 'package:safe_car_system/screen/home_screen.dart';
import 'package:safe_car_system/screen/loading_screen.dart';
import 'package:safe_car_system/screen/log_in_screen.dart';
import 'package:safe_car_system/screen/auth_screen.dart';
import 'package:safe_car_system/screen/map_screen.dart';
import 'package:safe_car_system/screen/news_list_screen.dart';
import 'package:safe_car_system/screen/news_article_screen.dart';
import 'package:safe_car_system/screen/edit_screen.dart';
import 'screen/qr_code_screen.dart';
import 'screen/setting_screen.dart';
import 'screen/chat_list_screen.dart';
import 'screen/chat_screen.dart';

void main() {
  runApp(const SafeCarSystem());
}

class SafeCarSystem extends StatelessWidget {
  const SafeCarSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LogInScreen(), // 로그인 화면
        '/auth': (context) => AuthScreen(), // 본인인증 화면
        '/home_screen': (context) => HomeScreen(), // 메인 화면
        '/news_list': (context) => NewsListScreen(), // 뉴스 목록 화면
        '/news_article': (context) => NewsArticleScreen(), // 뉴스 기사 화면
        '/edit': (context) => EditScreen(), // 뉴스 기사 화면
        '/qr_code': (context) => QrCodeScreen(), // qr code 찍는 화면
        '/setting': (context) => SettingScreen(),
        '/chat_list': (context) => ChatListScreen(),
        '/chat': (context) => ChatScreen(),
        '/loading': (context) => LoadingScreen(),
        '/map': (context) => MapScreen(),
      },
    );
  }
}
