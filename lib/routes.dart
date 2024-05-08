import 'package:get/get.dart';
import 'package:loginauth/view/auth/signin/signup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SignUpScreen()),
];
