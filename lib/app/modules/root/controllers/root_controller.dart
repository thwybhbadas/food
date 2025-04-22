import 'package:flutter/material.dart';
import 'package:food/app/modules/home/views/home_view.dart';
import 'package:food/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  //TODO: Implement RootController

  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
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

  void onTap(int index) {
    _selectedIndex.value = index;
  }

  final screens=[
    HomeView(),
    ProfileView()
  ];
  final  List<IconData> listOfIcons = [
    Icons.home_outlined,
    Icons.person_outline,
  ];
  final listOfLabels=[
    'Home',
    'profile'];
 
}
