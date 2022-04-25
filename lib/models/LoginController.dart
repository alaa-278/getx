import 'package:get/get.dart';

class LoginController extends GetxController implements GetxService {
  RxBool isRemember = false.obs;
Future<LoginController> init() async{
  await Future.delayed(Duration(seconds: 2));
  return this;
}
  changeIsRememberMe(bool val){
    isRemember.value = val;
    update();
  }
  toggleIsRememberMe(){
    isRemember.value = ! isRemember.value;
    update();
  }

}
