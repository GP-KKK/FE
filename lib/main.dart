import 'package:car2/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initialBinding.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: InitialBinding(),
      home: LoginScreen(),
    ),
  );
}


