import 'package:fe/src/presentation/common/animated_visibility.dart';
import 'package:fe/src/presentation/common/speech_bubble.dart';
import 'package:fe/src/shared/theme/color_theme.dart';
import 'package:flutter/material.dart';

import '../../shared/theme/text_theme.dart';

class ChatLayout extends StatefulWidget {
  @override
  _ChatLayoutState createState() => _ChatLayoutState();
}

class _ChatLayoutState extends State<ChatLayout> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  bool _showAdditionalOptions = false;
  bool _showMannerTemperature = false;

  void initState() {
    super.initState();
    // Add initial messages
    // _messages.add('대화가 시작되었습니다.');
    // _messages.add('8549 차주 되시나요? 차량 이동 부탁드립니다.');
    // Optionally show additional options and manner temperature initially
  }

  void _sendMessage() {
    print("sended");
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  void _toggleAdditionalOptions() {
    setState(() {
      _showAdditionalOptions = !_showAdditionalOptions;
    });
  }

  void _toggleMannerTemperature() {
    setState(() {
      _showMannerTemperature = true;
    });
  }

  void callOnTap() {
    setState(() {
      print('보류');
    });
  }

  void cameraOnTap() {
    setState(() {
      print('보류');
    });
  }

  void checkOnTap() {
    setState(() {
      _messages.add("상대방이 문제해결 여부를 체크할 때까지 대기중입니다...(1/2)");
      _messages.add("문제가 해결되었습니다...(2/2)\n매너 온도 평가 화면으로 이동합니다.");
      _toggleMannerTemperature();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ColorTheme.primaryGradient),
      child: Column(
        children: <Widget>[
          // 추가 기능 목록 중 체크 아이콘 버튼을 눌렀을 때
          // 매너 온도 평가 목록
          if (_showMannerTemperature)
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8.0),
              //color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("매너 온도 평가하러 가기",                        style: textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: AnimatedVisibility(
              isVisible: true,
              child: Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: ShapeDecoration(
                  color: ColorTheme.slateColor[400]!,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  '대화가 시작되었습니다.',
                  style: textTheme.bodySmall!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AnimatedVisibility(
              isVisible: true,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SpeechBubble(
                  textContent: Row(
                    children: [
                      Text(
                        '5978 차주분 되시나요? 차량 이동 부탁드립니다. \n- 00편의점 점주',
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // 채팅 화면
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: _messages[index] == "상대방이 문제해결 여부를 체크할 때까지 대기중입니다...(1/2)"
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        //alignment: Alignment.centerRight,

                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 2 / 3,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  _messages[index],
                                  style: textTheme.labelMedium!.copyWith(
                                    color: ColorTheme.slateColor,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // 추가 기능 목록
          //  더하기 아이콘 버튼을 눌렀을 때
          if (_showAdditionalOptions)
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircleButton(Icons.phone, Colors.green, callOnTap),
                  _buildCircleButton(Icons.camera, Colors.purple, cameraOnTap),
                  _buildCircleButton(Icons.check, Colors.blue, checkOnTap),
                ],
              ),
            ),

          // 텍스트 필드 & 더하기 아이콘 버튼
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.grey,),
                        onPressed: _toggleAdditionalOptions,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: '메세지를 입력하세요',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(color: Colors.grey), // Set border color to gray

                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10), // Adjusted padding inside the TextField
                            hintStyle: TextStyle(fontSize: 15.0), // Decreased font size

                          ),
                        ),
                      ),
                    ],
                  ),

                  // 전송 아이콘 버튼
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: IconButton(
                      icon: const Icon(Icons.send, color: Colors.grey,),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleButton(
      IconData icon, Color iconColor, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 2), // 검정색 테두리
        color: iconColor,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
