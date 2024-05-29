import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthState();
}

class _AuthState extends State<AuthScreen> {
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
