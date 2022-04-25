import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screens/home_screen.dart';
import 'package:getx/Screens/login_screen.dart';
import 'package:getx/Screens/register_screen.dart';
import 'package:getx/Screens/trans.dart';
import 'package:getx/models/LoginController.dart';

void main() {
  Get.put(()=>LoginController().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Meassages(),
      locale: Locale('en'),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen())
      ],
    );
  }
}
