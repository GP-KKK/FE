import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('본인인증'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: ElevatedButton(
            child: Text('본인인증'),
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('/home_screen');
              });
            },
          ),
        ),
      ),
    );
  }
}
