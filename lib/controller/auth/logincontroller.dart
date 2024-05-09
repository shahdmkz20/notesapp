import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/approutes.dart';

abstract class LoginControllerABS extends GetxController {
  login();
  loginWithFacebook();
  loginWithGoogle();
  loginWithApple();
  goToSignUp();
  showPass();
}

class LoginController extends LoginControllerABS {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool show = true;
  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  login() {}

  @override
  loginWithApple() {}

  @override
  loginWithFacebook() {}

  @override
  loginWithGoogle() {}

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
  showPass() {
    show = !show; // Toggle the value of ShowPass
    update();
  }
}
