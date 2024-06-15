part of '../repository.dart';
enum LoginType { google, apple, kakao, naver, line }

abstract class AuthRepository {
  //리턴타입 명세 해야
  Future<UserModel> login({required String type});
  //Future<void> logout({required dynamic source});

  Future<UserModel?> getUser({required UserModel user});
  Future<void> updateUser({required UserModel user});
  Future<void> deleteUser();

}