import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';

import '../../data/home_controller/home_controller.dart';
import '../resources/assets_manager/assets_manager.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  var homeController=HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()=>homeController.screens[homeController.currentIndex.value]),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
          items:  const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.auto_awesome_mosaic),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          backgroundColor: ColorManager.white,
          unselectedItemColor: ColorManager.black,
          selectedIconTheme: IconThemeData(color: ColorManager.primary),
          currentIndex:homeController.currentIndex.value,
          onTap:(index){
            homeController.currentIndex.value=index;
          },
        ),
      ),
    );
  }
}