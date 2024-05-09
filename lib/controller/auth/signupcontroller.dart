import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginauth/core/constants/approutes.dart';

abstract class SignUpControllerABS extends GetxController {
  signup();
  signupWithFacebook();
  signupWithGoogle();
  signupWithApple();
  goToLogin();
}

class SignUpController extends SignUpControllerABS {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool show = true;
  @override
  goToLogin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    /* FirebaseMessaging.instance.getToken().then((value) {
      print("value of token: $value");
    }).catchError((error) {
      print("Error getting token: $error");
    });*/
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  signup() {}

  @override
  signupWithApple() {}

  @override
  signupWithFacebook() {}

  @override
  signupWithGoogle() {}
}
