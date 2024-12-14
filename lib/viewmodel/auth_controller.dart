import 'package:car2/repository/social_login_repository.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';

class AuthController extends GetxController {
  final SocialLoginRepository naverService;
  Rxn<UserModel> user = Rxn<UserModel>();

  AuthController({required this.naverService});

  Future<void> loginWithNaver() async {
    try {
      final fetchedUser = await naverService.login();
      if (fetchedUser != null) {
        user.value = fetchedUser;
        Get.snackbar('Login Success', 'Welcome, ${fetchedUser.name}');
      } else {
        Get.snackbar('Login Failed', 'Invalid credentials');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> logout() async {
    await naverService.logout();
    user.value = null;
    Get.snackbar('Logout', 'Logged out successfully');
  }
}
