import 'package:car2/viewmodel/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svg/btn_login_naver.svg',
              width: 200,
              semanticsLabel: 'Naver Login Button',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await authController.loginWithNaver();
                if (authController.user.value != null) {
                  Get.offAllNamed('/home_screen');
                }
              },
              child: const Text('Login with Naver'),
            ),
          ],
        ),
      ),
    );
  }
}
