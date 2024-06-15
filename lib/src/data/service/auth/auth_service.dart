part of '../service.dart';
@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/login')
  Future<UserModel?> login(@Body() Map<String, dynamic> loginData);
  @GET('/user')
  Future<UserModel?> getUser(String email);

  @PATCH('/modify')
  Future<void> updateUser(@Body() Map<String, dynamic> userData);

  @DELETE('/user')
  Future<void> deleteUser();

  // @POST('/logout')
  // Future<void> logout();
}
