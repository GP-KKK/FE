part of '../service.dart';
@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/login')
  Future<UserModel?> login(@Body() Map<String, dynamic> loginData);

  // @POST('/logout')
  // Future<void> logout();
}
