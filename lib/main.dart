import 'dart:async';

import 'package:fe/src/app.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
// import 'package:guardiann_flutter/src/shared/provider.dart';

Future<void> main() async {
  await initializeApp();
  runApplication();
}

void runApplication() {
  final ftoast = FToast();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // kakao login
  KakaoSdk.init(nativeAppKey: '5023f50da56c724b08f5d91b6ee9ba61');

  // location permission
  await _checkLocationPermission();

  // sendBird chat api
  await SendbirdChat.init(
    appId: 'BC23D9CA-D861-4819-9C1B-FF94FBC9E234',
    options: SendbirdChatOptions(useCollectionCaching: true),
  );

// USER_ID below should be unique to your Sendbird application.
  runZonedGuarded(() async {
    // user는 어플 사용자의 id, 김성민
    final user = await SendbirdChat.connect('rlarudals55449966'); // user id
    print(user.userId);
    if (user.nickname == '') {
      print('새로 생성한 계정의 경우 약간의 딜레이로 인해서 닉네임이 안바뀐 상태로 출력됨');
      SendbirdChat.updateCurrentUserInfo(nickname: 'testUser'); // user nickname
    }
    // The user is connected to the Sendbird server.
    print(
        'SendBird Message | Main.dart | InitializeApp() : Success to Connect');
    print('--> User Id : ${user.userId}');
    print('--> User Nickname : ${user.nickname}');
  }, (e, s) {
    // Handle error.
    print('Error Message | main.dart | initializeApp() : $e');
    print('Error Message | main.dart | initializeApp() : $s');
  });

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
}

Future<void> _checkLocationPermission() async {
  var status = await Permission.location.status;
  if (status.isDenied) {
    await Permission.location.request();
  }
}
