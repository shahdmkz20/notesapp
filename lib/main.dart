import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginauth/firebase_options.dart';
import 'package:loginauth/routes.dart';

import 'core/localizations/changelocal.dart';
import 'core/localizations/translation.dart';
import 'core/services/services.dart';
import 'view/auth/signin/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalLangController controller = Get.put(LocalLangController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.lang,
      theme: controller.appTheme,
      translations: MyTranslation(),
      home: const SignUpScreen(),
      getPages: routes,
    );
  }
}
