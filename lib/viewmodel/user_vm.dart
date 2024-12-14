import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/user_model.dart';
import '../repository/user_repository.dart';

class UserViewModel extends GetxController {
  final UserRepository _repository;
  Rxn<UserModel> user = Rxn<UserModel>();

  UserViewModel(this._repository);

  Future<void> login(String email, String username, String source) async {
    final fetchedUser = await _repository.login(email, username, source);
    if (fetchedUser != null) {
      user.value = fetchedUser;
      Get.snackbar('Login Success', 'Welcome ${fetchedUser.name}!');
    } else {
      Get.snackbar('Login Error', 'Invalid credentials');
    }
  }

  Future<void> getUser(String email) async {
    final fetchedUser = await _repository.getUser(email);
    if (fetchedUser != null) {
      user.value = fetchedUser;
    } else {
      Get.snackbar('Error', 'User not found');
    }
  }

  Future<void> modifyUser(UserModel updatedUser) async {
    final success = await _repository.modifyUser(updatedUser);
    if (success) {
      user.value = updatedUser;
      Get.snackbar('Success', 'Profile updated');
    } else {
      Get.snackbar('Error', 'Failed to update profile');
    }
  }

  Future<void> evaluate(String id, String email, String score) async {
    await _repository.evaluate(id, email, score);
    Get.snackbar('Success', 'Evaluation submitted');
  }
}
