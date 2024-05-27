import 'package:fe/src/app.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
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