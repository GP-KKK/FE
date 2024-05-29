import 'package:flutter/material.dart';

class NewsArticleScreen extends StatelessWidget {
  const NewsArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("뉴스 기사"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text('news article screen'),
      ),
    );
  }
}
