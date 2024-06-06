import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safe_car_system/constant/my_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final GestureTapCallback onTap;

    return Scaffold(
      appBar: AppBar(
        title: Text('안심 차주 연락시스템'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: settingOnTap,
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 프로필 위젯
            _Profile(
              onTap: editOnTap,
            ),

            SizedBox(height: 24),

            // 뉴스 배너
            myContainer(
              child: Text("news"),
              height: 100,
              width: 200,
              onTap: newsOnTap,
            ),

            SizedBox(height: 32),

            // 지도 배너
            myContainer(
              child: Text("map"),
              height: 100,
              width: 200,
              onTap: mapOnTap,
            ),

            SizedBox(height: 32),

            // chat & qr code 배너
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // chat 배너
                myContainer(
                  child: Text("chat"),
                  height: 100,
                  width: 200,
                  onTap: chatOnTap,
                ),

                // qr code 배너
                myContainer(
                  child: Text("qr code"),
                  height: 100,
                  width: 200,
                  onTap: qrOnTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void settingOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/setting');
    });
  }

  void newsOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/news_list');
    });
  }

  void mapOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/news_list');
    });
  }

  void chatOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/news_list');
    });
  }

  void qrOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/news_list');
    });
  }

  void editOnTap() {
    setState(() {
      Navigator.of(context).pushNamed('/edit');
    });
  }
}

class _Profile extends StatelessWidget {
  final GestureTapCallback onTap;

  _Profile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Stack(children: [
        Row(
          children: [
            // icon image
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              child: Image.asset(
                'asset/img/img.png',
              ),
            ),

            // profile 정보
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "- 닉네임",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- 상태",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- 상태 메시지",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- 온도",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Align(
          child: IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.edit,
            ),
          ),
          alignment: Alignment.topRight,
        ),
      ]),
    );
  }
}
