import 'package:flutter/material.dart';
import 'package:food/app/data/users.dart';
import 'package:food/app/data/models/users_model.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  final GetStorage _storage = GetStorage();
  final List<UsersModel> users = Users.users;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> login(String email, String password) async {
    try {
      final user = users.firstWhere(
        (u) => u.email == email && u.password == password,
      );
      await _storage.write('email', user.email);
      await _storage.write('username', user.userName);
      Get.offAllNamed(Routes.ROOT); // الانتقال للصفحة الرئيسية
    } catch (e) {
      Get.snackbar(
        'خطأ',
        'البريد الإلكتروني أو كلمة المرور غير صحيحة',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void logout() {
    _storage.remove('email');
    _storage.remove('username');
    
  }

  bool get isLoggedIn => _storage.hasData('email');
  String? get userEmail => _storage.read('email');
  String? get username => _storage.read('username');
}
