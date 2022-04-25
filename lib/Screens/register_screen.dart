import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/models/LoginController.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        appBar: AppBar(
          title: const Text('Register Screen'),
        ),
        body: Center(
          child: InkWell(
              onTap: (){
                Get.find()<LoginController>().toggleIsRememberMe();
              },
              child:
              GetBuilder<LoginController>(builder: (_){
                return Text(Get.find<LoginController>().isRemember.toString());
          }

        ),
      ),
    )));
  }
}
