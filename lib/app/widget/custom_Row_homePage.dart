import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/editor_page/editor_page.dart';
import '../../presentation/resources/assets_manager/assets_manager.dart';
import '../../presentation/resources/color_manager/color_manager.dart';
import '../../presentation/resources/routes_manager/routes_manager.dart';

class CustomRowToHomePage extends StatelessWidget {
  const CustomRowToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Get.toNamed(Routes.editorPage);
          },
          child: Column(
            children: [
              Image.asset(ImageAssets.layer),
              const SizedBox(height: 10,),
              Text("Editor",style: TextStyle(fontSize: 15,color: ColorManager.black),),
            ],
          ),
        ),

        InkWell(
          onTap: (){
            Get.toNamed(Routes.myCollages);
          },
          child: Column(
            children: [
              Image.asset(ImageAssets.star),
              const SizedBox(height: 10,),
              Text("Collages",style: TextStyle(fontSize: 15,color: ColorManager.black),),
            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Column(
            children: [
              Image.asset(ImageAssets.page),
              const SizedBox(height: 10,),
              Text("Offers ",style: TextStyle(fontSize: 15,color: ColorManager.black),),
            ],
          ),
        ),
      ],
    );
  }
}
