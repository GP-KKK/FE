part of '../controller.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.notAuthenticated() = NotAuthenticated;
  const factory AuthState.authenticated({
    required UserModel user,
    UserModel? updatedUser,
  }) = Authenticated;
  const factory AuthState.invalid() = AuthInvalid;
}