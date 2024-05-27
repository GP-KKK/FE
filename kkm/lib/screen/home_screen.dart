import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant/my_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('안심 차주 연락시스템'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Row(
                children: [
                  Image.asset(
                    'asset/img/img.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "- 이름",
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
                ],
              ),
              Align(
                child: GestureDetector(
                  child: Icon(
                    Icons.settings,
                  ),
                  onTap: () {
                    print("go to setting screen");
                  },
                ),
                alignment: Alignment.topRight,
              ),
            ]),
            SizedBox(height: 24),
            myContainer(
              child: Text("news"),
              height: 100,
              width: 200,
              onTap: newsOnTap,
            ),
            SizedBox(height: 32),
            myContainer(
              child: Text("map"),
              height: 100,
              width: 200,
              onTap: mapOnTap,
            ),
            SizedBox(height: 32),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: myContainer(
                      child: Text("chat"),
                      height: 100,
                      width: 200,
                      onTap: chatOnTap,
                    ),
                  ),
                  Expanded(
                    child: myContainer(
                      child: Text("qr code"),
                      height: 100,
                      width: 200,
                      onTap: qrOnTap,
                    ),
                  ),

                ]
              
            ),
          ],
        ),
      ),
    );
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
}
