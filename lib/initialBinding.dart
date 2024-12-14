import 'package:car2/repository/user_repository.dart';
import 'package:car2/service/naver_service.dart';
import 'package:car2/service/user_service.dart';
import 'package:car2/viewmodel/auth_controller.dart';
import 'package:car2/viewmodel/user_vm.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // 의존성 생성
    final dio = Dio();
    final userService = UserService(dio);
    final userRepository = UserRepository(userService);
    final naverService = NaverService();

    // AuthController와 UserViewModel 주입
    Get.lazyPut<AuthController>(
          () => AuthController(naverService: naverService),
      fenix: true,
    );

    Get.lazyPut<UserViewModel>(
          () => UserViewModel(userRepository),
      fenix: true,
    );
  }
}
