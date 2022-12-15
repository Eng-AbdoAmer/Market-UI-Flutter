import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class ShowLogoutDialog extends GetxController{
  clickLogOut(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        titlePadding: EdgeInsets.symmetric(vertical: 20,horizontal:100),
        title:  Text("Alert",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        content:  Text("Are you Sure want to Logout",style: TextStyle(fontSize: 15),),
        actions: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:40 ,
                width:120 ,
                child: ElevatedButton(
                    onPressed: (){
                      Get.back();
                    }, child: Text("Cancel",style: TextStyle(color: ColorManager.black),),style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0,color: ColorManager.black),
                    backgroundColor: ColorManager.white)),
              ),

              SizedBox(
                  height:40 ,
                  width:120 ,
                  child: ElevatedButton(onPressed: (){}, child: Text("Logout"),style: ElevatedButton.styleFrom(backgroundColor: ColorManager.black))),
            ],
          ),
        ],
      );
    });

  }
}