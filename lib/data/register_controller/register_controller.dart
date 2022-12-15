import 'package:get/get.dart';

class RegisterController extends GetxController{
  RxBool isPassword=true.obs ;
  changeStatus() {
    isPassword.toggle();
  }
}