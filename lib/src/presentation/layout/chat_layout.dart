import 'package:flutter/material.dart';

class ChatLayout extends StatefulWidget {
  @override
  _ChatLayoutState createState() => _ChatLayoutState();
}

class _ChatLayoutState extends State<ChatLayout> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  bool _showAdditionalOptions = false;
  bool _showMannerTemperature = false;

  void _sendMessage() {
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
    return Column(
      children: <Widget>[
        // 추가 기능 목록 중 체크 아이콘 버튼을 눌렀을 때
        // 매너 온도 평가 목록
        if (_showMannerTemperature)
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("매너 온도 평가하러 가기"),
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
                child: Align(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 2 / 3,
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color:
                          index % 2 == 0 ? Colors.grey[300] : Colors.blue[200],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      _messages[index],
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _toggleAdditionalOptions,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
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
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ),
            ],
          ),
        ),
      ],
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
