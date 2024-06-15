part of '../source.dart';


class AuthDataSource implements AuthRepository{
  final AuthService _service;
  final Map<LoginType, SocialLoginRepository> _loginServices;

  AuthDataSource({
    required AuthService service,
    required final Map<LoginType, SocialLoginRepository> loginServices,
  }): _service=service,
      _loginServices=loginServices;

  @override
  Future<UserModel> login({required String type}) async{
    final loginService = _loginServices[LoginType.naver];//이제 얘는 naverServiue
    final userInfo = await loginService?.login();
    print("네이버로 받은 정보 : $userInfo");
    if(userInfo == null){
      throw Exception('로그인 실패');
    }else{
      final response = await _postLoginProcess(userInfo);
      print("=======response===========");
      print(response);
      if(response!=null){
        return response;

      }
      else {return response!;}
    }
  }
  Future<UserModel?> _postLoginProcess(UserModel userInfo) async {

    Map<String, dynamic> toLoginData ={ "email":userInfo.email, "username":userInfo.name, "source":userInfo.source};
    print(toLoginData);
    final Dio dio = Dio();

    try {
      final response = await dio.post(
        'http://34.47.108.136:8080/login',
        data: toLoginData,
      );
      print("response");
      print(response.data);

      final Map<String, dynamic> responseData;
      if (response.data is String) {
        responseData = jsonDecode(response.data) as Map<String, dynamic>;
      } else if (response.data is Map) {
        responseData = response.data as Map<String, dynamic>;
      } else {
        throw Exception('Invalid response data format');
      }


      print("responseData!!!!!!!");

      print(responseData);
      print("userModel!!!!!!!");

      final userModel = UserModel.fromJson(responseData);
      print(UserModel.fromJson(responseData));

      print(userModel);

      return userModel;

    } catch (err) {
      return null;
    }
  }
  @override
  Future<UserModel?> getUser({required UserModel user}) => _service.getUser(user.email);

  @override
  Future<void> updateUser({required UserModel user}) =>
      _service.updateUser(user.toJson());

  @override
  Future<void> deleteUser() => _service.deleteUser();
}


@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return AuthDataSource(
    service: AuthService(client, baseUrl: 'https://${Constants.ip}/'),
    loginServices: {
      // LoginType.google: GoogleService(),
      // LoginType.apple: AppleService(),
      // LoginType.kakao: KakaoService(),
      LoginType.naver: NaverService(),
    },
  );
}
