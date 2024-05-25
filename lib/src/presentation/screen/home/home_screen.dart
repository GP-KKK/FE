import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

  class _HomeScreenState extends ConsumerState<HomeScreen>
  with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildHomeScreen();
  }

  Widget _buildHomeScreen(){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('홈화면'),
      ),
    );
  }


  }


