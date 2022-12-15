import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

RxBool isPassword=true.obs ;
 changeStatus() {
  isPassword.toggle();
}
}