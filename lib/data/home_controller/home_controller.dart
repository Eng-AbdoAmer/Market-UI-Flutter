import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/presentation/cart_page/cart_page.dart';
import 'package:market/presentation/categories_page/categories_page.dart';
import 'package:market/presentation/home_page/home_page.dart';

import '../../presentation/profile_page/profile_page.dart';

class HomeController extends GetxController{
  RxInt currentIndex=0.obs;
  List<Widget>screens=[
    const HomePage(),
     CategoriesPage(),
    const CartPage(),
     ProfilePage(),
  ];
  List<String>titles=[];


  ontap(RxInt i){
    currentIndex=i;
    update();
  }
}