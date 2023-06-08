import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool isPasswordVisible = false.obs;
	final TextEditingController emailController = TextEditingController();
	final TextEditingController passwordController = TextEditingController();

	void togglePasswordVisibility() {
		isPasswordVisible.value = !isPasswordVisible.value;
		update();
	}

	login() {
		Get.offNamed('/home');
	}
}