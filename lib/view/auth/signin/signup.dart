import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signupcontroller.dart';
import '../../../core/constants/appcolors.dart';
import '../../reusable/button.dart';
import '../../reusable/authWidgets.dart';
import '../../reusable/customformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpController());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<SignUpController>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(
                  height: Get.height / 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '18'.tr, // welcome
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: AppColors.primaryColor),
                ),
                Text(
                  textAlign: TextAlign.center,
                  '13'.tr, //please lsignup ....
                  style: const TextStyle(color: AppColors.textColor),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                FieldName(text: '15'.tr),
                CustomFormField(
                  hintTxt: '15'.tr, //username
                  txtController: controller.passwordController,
                  isPassword: true,
                  iconData: Icons.remove_red_eye,
                  // onTapPass: controller.showPass(),
                ),
                SizedBox(
                  height: Get.height / 60,
                ),
                FieldName(text: '3'.tr),
                //email
                CustomFormField(
                    hintTxt: '4'.tr, txtController: controller.emailController),
                SizedBox(
                  height: Get.height / 60,
                ),
                FieldName(text: '5'.tr), //password
                CustomFormField(
                  hintTxt: '6'.tr,
                  txtController: controller.passwordController,
                  isPassword: true,
                  iconData: Icons.remove_red_eye,
                  // onTapPass: controller.showPass(),
                ),
                SizedBox(
                  height: Get.height / 60,
                ),
                FieldName(text: '16'.tr),
                CustomFormField(
                  hintTxt: '6'.tr, //confirm pass
                  txtController: controller.passwordController,
                  isPassword: true,
                  iconData: Icons.remove_red_eye,
                  // onTapPass: controller.showPass(),
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                CustomButton(
                  //Signup button
                  onPressed: controller.signup(),
                  btnTxt: '14'.tr,
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                OrWithDivider(text: '10'.tr), //or
                SizedBox(
                  height: Get.height / 60,
                ),
                //icons for other login types
                SocialMediaLogos(
                  onApplePressed: controller.signupWithApple(),
                  onGooglePressed: controller.signupWithGoogle(),
                  onFacebookPressed: controller.signupWithFacebook(),
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                TwoTextRowWithTxtBtn(
                  firstTxt: '17'.tr,
                  secondTxt: '9'.tr,
                  secondTxtPressed: () {
                    controller.goToLogin();
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
