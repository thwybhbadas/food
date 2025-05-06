import 'package:flutter/material.dart';
import 'package:food/app/modules/auth/controllers/auth_controller.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
   ProfileView({super.key});
    final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body:  Center(
        child:Text('مرحباً ${authController.username}'),
      ),
    );
  }
}
