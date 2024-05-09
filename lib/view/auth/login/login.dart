import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginauth/controller/auth/logincontroller.dart';

import '../../../core/constants/appcolors.dart';
import '../../../core/constants/appimages.dart';
import '../../reusable/authWidgets.dart';
import '../../reusable/button.dart';
import '../../reusable/customformfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<LoginController>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(
                  height: Get.height / 50,
                ),
                const LogoContainer(
                  imageName: ImagesAssets.logo,
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '1'.tr, // welcome back
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: AppColors.primaryColor),
                ),
                Text(
                  textAlign: TextAlign.center,
                  '2'.tr, //please login to get to your notes
                  style: const TextStyle(color: AppColors.textColor),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                FieldName(text: '3'.tr), //email
                CustomFormField(
                    hintTxt: '4'.tr, txtController: controller.emailController),
                SizedBox(
                  height: Get.height / 50,
                ),
                FieldName(text: '5'.tr), //password
                CustomFormField(
                  hintTxt: '6'.tr,
                  txtController: controller.passwordController,
                  isPassword: true,
                  iconData: Icons.remove_red_eye,
                  onTapPass: controller.showPass(),
                ),
                ForgetPasswordBtn(
                  text: '7'.tr,
                ),
                CustomButton(
                  //login button
                  onPressed: controller.login(),
                  btnTxt: '9'.tr,
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                OrWithDivider(text: '10'.tr),
                SizedBox(
                  height: Get.height / 60,
                ),
                //icons for other login types
                SocialMediaLogos(
                  onApplePressed: controller.loginWithApple(),
                  onGooglePressed: controller.loginWithGoogle(),
                  onFacebookPressed: controller.loginWithFacebook(),
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                TwoTextRowWithTxtBtn(
                  firstTxt: '11'.tr,
                  secondTxt: '12'.tr,
                  secondTxtPressed: () {
                    controller.goToSignUp();
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
