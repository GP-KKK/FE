import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _showFailScreen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showFailScreen = !_showFailScreen;
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Scanner'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Stack(
            children: [
              // 프로필 찾는 중 화면
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '프로필을 찾고 있습니다.',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/chat');
                        });
                      },
                      child: CircularProgressIndicator(),
                    ),
                  ],
                ),
              ),

              // 회색 화면 전환
              if (_showFailScreen)
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),

              // 로딩에 실패 했다는 배너 widget
              if (_showFailScreen)
                Positioned(
                  left: 50,
                  right: 50,
                  top: 150,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "프로필을 찾을 수 없습니다!",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).popUntil(
                                  (route) => route.isFirst,
                                );
                              });
                            },
                            child: Text('확인'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
