import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screens/login_screen.dart';
import 'package:getx/Screens/register_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          toolbarHeight: 70,
          actions: [
            IconButton(onPressed: (){
              if(Get.locale?.languageCode=="ar"){
                Get.updateLocale(const Locale('en'));
              }
              else{
                Get.updateLocale(const Locale('ar'));
              }
            }, icon: Text('lang'.tr))
          ],
        ),
          body: Column(
        children: [
          TextButton(
            onPressed: () {
                 Get.to( LoginScreen());
            },
            child: const Text('LoginScreen'),
          ),
           Text('Push to Login Screen'.tr),
          TextButton(
            onPressed: () {
               Get.to(const RegisterScreen());
            },
            child: const Text('RegisterScreen'),
          ),
           Text('Push to Register Screen'.tr)
        ],
      )),
    );
  }
}
