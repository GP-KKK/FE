import 'package:flutter/material.dart';

import 'screen/auth.dart';
import 'screen/home_screen.dart';
import 'screen/log_in.dart';
import 'screen/news_article.dart';
import 'screen/news_list.dart';

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
        '/': (context) => LogIn(),
        '/auth': (context) => Auth(),
        '/home_screen': (context) => HomeScreen(),
        '/news_list': (context) => NewsList(),
        '/news_article': (context) => NewsArticle(),
      },
    );
  }
}
