import 'package:get/get.dart';
import 'package:loginauth/view/auth/login/login.dart';
import 'package:loginauth/view/auth/signin/signup.dart';

import 'core/constants/approutes.dart';

List<GetPage<dynamic>>? routes = [
  //GetPage(name: "/", page: () => const SignUpScreen()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpScreen()),
  GetPage(name: AppRoutes.login, page: () => const Login()),
];
