import 'package:fe/src/app.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:permission_handler/permission_handler.dart';
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
