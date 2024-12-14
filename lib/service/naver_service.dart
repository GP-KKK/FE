import 'package:flutter_naver_login/flutter_naver_login.dart';
import '../../model/user_model.dart';
import '../repository/social_login_repository.dart';


class NaverService implements SocialLoginRepository {
  @override
  Future<UserModel?> login() async {
    try {
      final NaverLoginResult result = await FlutterNaverLogin.logIn();
      if (result.status == NaverLoginStatus.loggedIn) {
        return _toUser(result.account);
      }
    } catch (error) {
      print('Naver Login Error: $error');
    }
    return null;
  }

  UserModel _toUser(NaverAccountResult naverUser) => UserModel(
    email: naverUser.email,
    name: naverUser.name,
    profileImage: naverUser.profileImage.isNotEmpty
        ? naverUser.profileImage
        : null,
    source: 'naver',
  );

  @override
  Future<void> logout() async {
    await FlutterNaverLogin.logOut();
  }
}
