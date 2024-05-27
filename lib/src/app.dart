import 'package:fe/src/presentation/screen/login/login_screen.dart';
import 'package:fe/src/presentation/screen/news/news_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        //'/auth': (context) => Auth(),
        '/home_screen': (context) => HomeScreen(),
        '/news_list': (context) => NewsList(),
        '/news_article': (context) => NewsArticle(),
      },
      //home: LoginScreen(),
    );
  }
  
}