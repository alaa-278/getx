import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screens/register_screen.dart';
import 'package:lottie/lottie.dart';
import '../widgets/text_form_field.dart';
import '../models/LoginController.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey formKey = GlobalKey<FormState>();
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('Login Screen'.tr),
          ),
          body: Form(
            key: key,
            child: ListView(
              children: [
                Lottie.asset('assets/93385-login.json',
                    height: Get.height * 0.2),
                Center(
                    child: Text(
                  'login'.tr,
                  style: Get.textTheme.headline4!
                      .copyWith(color: Colors.redAccent),
                )),
                CustomTextInputFormField(
                  hintText: 'Email'.tr,
                ),
                CustomTextInputFormField(
                  hintText: 'Password'.tr,
                ),
                GetBuilder<LoginController>(
                  builder: (controller) {
                    return CheckboxListTile(
                      value: controller.isRemember.value,
                      onChanged: (val) {
                        controller.changeIsRememberMe(val!);
                      },
                      title: Text('Remember Me'.tr),
                    );
                  }
                ),
                CupertinoButton(child: Text("login".tr), onPressed: () {
                  Get.to(RegisterScreen());
                })
              ],
            ),
          )),
    );
  }
}

