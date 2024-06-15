part of '../controller.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    return const AuthInitial();
  }

  Future<void> init() async {
    final user = await getProfile();

    if (user == null) {
      state = const NotAuthenticated();
    }
  }

  Future<void> login({required String type}) async {
    // final token = await ref
    //     .watch(authRepositoryProvider)
    //     .login(type: type )
    //     .onError(ref.read(errorControllerProvider.notifier).onError);


      final user = await getProfile();

      if (user == null) {
        state = const NotAuthenticated();
      }
  }
  Future<UserModel?> getProfile() async {
    final user = await ref
        .watch(authRepositoryProvider)
        .login(type: 'naver');

    if (user is UserModel) {
      state = Authenticated(user: user, updatedUser: user);

      return user;
    } else {
      return null;
    }
  }
  void setProfile({required UserModel user, UserModel? updatedUser}) {
    state = Authenticated(user: user, updatedUser: updatedUser);
  }

  Future<void> updateProfile({required UserModel user}) async {
    try {
      await ref.watch(authRepositoryProvider).updateUser(user: user);
      setProfile(user: user, updatedUser: user);
    } catch (error, stackTrace) {
      ref.read(errorControllerProvider.notifier).onError(error, stackTrace);
    }
  }

}