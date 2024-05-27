import 'package:flutter/material.dart';

import '../constant/my_container.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              myContainer(
                width: 200,
                height: 100,
                child: Text('naver log-in'),
                onTap: naverLogIn,
              ),
              SizedBox(
                height: 20,
              ),
              myContainer(
                width: 200,
                height: 100,
                child: Text('google log-in'),
                onTap: googleLogIn,
              ),
              SizedBox(
                height: 20,
              ),
              myContainer(
                width: 200,
                height: 100,
                child: Text('apple log-in'),
                onTap: appleLogIn,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void naverLogIn() {
    setState(() {
      Navigator.of(context).pushNamed('/auth');
    });
  }

  void googleLogIn() {
    setState(() {
      Navigator.of(context).pushNamed('/auth');
    });
  }

  void appleLogIn() {
    setState(() {
      Navigator.of(context).pushNamed('/auth');
    });
  }
}
