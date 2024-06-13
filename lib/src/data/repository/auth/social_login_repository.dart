import 'package:fe/src/data/model/model.dart';

abstract class SocialLoginRepository {
  Future<UserModel?> login();
  //Future<void> logout();
}
