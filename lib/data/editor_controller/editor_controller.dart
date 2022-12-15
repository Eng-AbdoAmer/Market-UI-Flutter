import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../app/widget/custom_ElevatedBotton.dart';
import '../../app/widget/product_name_listtile.dart';
import '../../presentation/resources/color_manager/color_manager.dart';
import '../../presentation/resources/routes_manager/routes_manager.dart';

class EditorController extends GetxController{
  File? myImage;

  clickCamera(){
    ImagePicker.platform.getImage(source:ImageSource.camera ).then((value){
      if(value!=null){
        myImage=File(value.path);

      }else{

      }
    });
  }
  clickGallery(){
    ImagePicker.platform.getImage(source:ImageSource.gallery ).then((value){
      if(value!=null){
        myImage=File(value.path);

      }else{

      }
}
);
  }
Future showEditorDialog({required BuildContext context}){
    return  showDialog(context: context, builder: (context){
      return Padding(
        padding: EdgeInsets.only(top: 20.0,right: 20,left: 20,bottom: 20),
        child: Column(
          children:[
            Container(
              color: ColorManager.white,
              width: MediaQuery.of(context).size.width-20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Material(child: IconButton(onPressed: (){}, icon:Icon(Icons.filter_alt))),
                      Text("678 Found Results"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Material(
                    child: InkWell(
                      onTap: (){
                        Get.toNamed(Routes.productDetails);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        color: ColorManager.primary,
                      ),
                    ),
                  ),
                  Material(
                    child: ProductNameListtile(),
                  ),
                  Text("Size",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("UK 10",style: TextStyle(fontSize: 15,color: ColorManager.grey1),),
                  SizedBox(height: 20,),
                  Center(child: CustomElevatedBotttom(w:250 ,onpressed: (){},name: 'Add to Editor',h:50 ,)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh),
                      TextButton(onPressed: (){}, child: Text("Previous",style: TextStyle(fontSize: 16,color: ColorManager.black),))
                    ],)
                ],
              ),
            ),

          ],


        ),
      );
    });

}
}