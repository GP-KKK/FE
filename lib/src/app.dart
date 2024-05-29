import 'package:fe/src/presentation/screen/edit/edit_screen.dart';
import 'package:fe/src/presentation/screen/login/login_screen.dart';
import 'package:fe/src/presentation/screen/news/news_article.dart';
import 'package:fe/src/presentation/screen/news/news_screen.dart';
import 'package:fe/src/shared/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/screen/home/home_screen.dart';

class App extends HookConsumerWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // TODO: implement build
    return MaterialApp(
      theme: mainThemeByLocale(const Locale('ko')),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        //'/auth': (context) => Auth(),
        '/home_screen': (context) => const HomeScreen(),
        '/news_list': (context) => NewsList(),
        '/news_article': (context) => const NewsArticle(),
        '/edit': (context) => EditScreen(), // 뉴스 기사 화면

      },
      //home: LoginScreen(),
    );
  }
  
}