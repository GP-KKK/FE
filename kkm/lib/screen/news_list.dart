import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뉴스 목록'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity, // 너비를 화면의 최대 크기로 설정
            height: 80.0, // 높이를 80으로 설정
            margin: EdgeInsets.symmetric(
                vertical: 4.0, horizontal: 8.0), // 항목 사이에 약간의 간격을 추가
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게 설정
              border: Border.all(color: Colors.black, width: 1.0), // 윤곽선 설정
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/news_article');
                  });
                },
                child: Text(
                  'Item ${(index + 1)}', // 아이템 번호 표시
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
