import 'package:fe/src/data/model/model.dart';

enum LoginType { google, apple, kakao, naver, line }


abstract class AuthRepository {
  //리턴타입 명세 해야
  Future<UserModel> login({required String type});
  //Future<void> logout({required dynamic source});
}