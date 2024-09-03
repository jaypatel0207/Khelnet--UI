import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var isPasswordVisible = false.obs;
  var contactNumber = ''.obs;
  var passwordController = TextEditingController().obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void resetPassword() {
    passwordController.value.clear();
  }

  @override
  void onClose() {
    passwordController.value.dispose(); 
    super.onClose();
  }
}
