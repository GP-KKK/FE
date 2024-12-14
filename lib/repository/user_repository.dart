import '../../model/user_model.dart';
import '../service/user_service.dart';

class UserRepository {
  final UserService _service;

  UserRepository(this._service);

  Future<UserModel?> login(String email, String username, String source) {
    return _service.login(email, username, source);
  }

  Future<UserModel?> getUser(String email) {
    return _service.getUser(email);
  }

  Future<bool> modifyUser(UserModel user) {
    return _service.modifyUser(user);
  }

  Future<void> evaluate(String id, String email, String score) {
    return _service.evaluate(id, email, score);
  }
}
