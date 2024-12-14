import '../../model/user_model.dart';

abstract class SocialLoginRepository {
  Future<UserModel?> login();
  Future<void> logout();
}
