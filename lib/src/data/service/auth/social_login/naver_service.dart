import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/data/repository/auth/social_login_repository.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

class NaverService implements SocialLoginRepository {
  @override
  Future<UserModel?> login() async {
    try {
      final NaverLoginResult result = await FlutterNaverLogin.logIn();
      if (result.status == NaverLoginStatus.loggedIn) {
        return _toUser(result.account);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  UserModel _toUser(NaverAccountResult naverUser) => UserModel(
    email: naverUser.email,
    name: naverUser.name,
    profileImage:
    naverUser.profileImage.isNotEmpty ? naverUser.profileImage : null,
    source: 'naver',
  );

  @override
  Future<void> logout() async {
    try {
      await FlutterNaverLogin.logOut();
    } catch (e) {
      print(e);
    }
  }
}
