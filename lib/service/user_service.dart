import 'package:dio/dio.dart';
import '../../model/user_model.dart';

class UserService {
  final Dio _dio;
  final String baseUrl;

  UserService(this._dio, {this.baseUrl = 'http://34.64.241.103:8080'});

  Future<UserModel?> login(String email, String username, String source) async {
    try {
      final response = await _dio.post(
        '$baseUrl/login',
        data: {'email': email, 'username': username, 'source': source},
      );
      return UserModel.fromJson(response.data);
    } catch (e) {
      print('Login Error: $e');
      return null;
    }
  }

  Future<UserModel?> getUser(String email) async {
    try {
      final response = await _dio.get(
        '$baseUrl/getUser',
        queryParameters: {'email': email},
      );
      return UserModel.fromJson(response.data);
    } catch (e) {
      print('Get User Error: $e');
      return null;
    }
  }

  Future<bool> modifyUser(UserModel user) async {
    try {
      await _dio.put(
        '$baseUrl/modify',
        data: user.toJson(),
      );
      return true;
    } catch (e) {
      print('Modify User Error: $e');
      return false;
    }
  }

  Future<void> evaluate(String id, String email, String score) async {
    try {
      await _dio.post(
        '$baseUrl/evaluate',
        data: {'id': id, 'email': email, 'score': score},
      );
    } catch (e) {
      print('Evaluate Error: $e');
    }
  }
}
