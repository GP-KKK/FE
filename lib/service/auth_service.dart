import 'package:dio/dio.dart';
import '../../model/user_model.dart';

class AuthService {
  final Dio _dio;
  final String baseUrl;

  AuthService(this._dio, {this.baseUrl = 'http://34.64.241.103:8080'});

  Future<UserModel?> login(Map<String, dynamic> loginData) async {
    try {
      final response = await _dio.post('$baseUrl/login', data: loginData);
      return UserModel.fromJson(response.data);
    } catch (e) {
      print('Login API Error: $e');
      return null;
    }
  }
}
