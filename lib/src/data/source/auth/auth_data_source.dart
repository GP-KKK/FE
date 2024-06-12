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
    final loginService = _loginServices[LoginType.naver];
    final userInfo = await loginService?.login();
    if(userInfo == null){
      throw Exception('로그인 실패');
    }else{
      final response = await _postLoginProcess(userInfo);
      return response!;
    }
  }
  Future<UserModel?> _postLoginProcess(UserModel userInfo) async {


    final loginData = userInfo.toJson();
    print(loginData);
    try {
      final response = await _service.login(loginData);

      return response;
    } catch (err) {
      print(err);
      return null;
    }
  }

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
