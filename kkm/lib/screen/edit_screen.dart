import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로필 수정'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 프로필 위젯
            _Profile(),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      10,
                      (index) => Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                            top: 20,
                          ), // 각 Row 사이에 간격 추가
                          child: buildRowWithCircles(iconOnTap)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void iconOnTap() {
    setState(() {
      print('icon selected');
    });
  }
}

// 아이콘 원의 row
Widget buildRowWithCircles(GestureTapCallback onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildCircle(onTap),
      buildCircle(onTap),
      buildCircle(onTap),
    ],
  );
}

// 프로필 아이콘이 들어갈 원 위젯
Widget buildCircle(GestureTapCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Center(child: Text('icon')),
    ),
  );
}

// 프로필 위젯
class _Profile extends StatelessWidget {
  const _Profile({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration(String labelText) {
      return InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText, // 라벨 텍스트
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          // icon image
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            child: Image.asset('asset/img/img.png'),
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
                  '닉네임',
                  '상태',
                  '상태 메시지',
                  '온도',
                ]
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                        ),
                        child: Container(
                          height: 25,
                          child: TextField(
                            decoration: inputDecoration(e),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
