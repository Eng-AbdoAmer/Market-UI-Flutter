import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/app/widget/name_text.dart';
import 'package:market/app/widget/sub_text.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';

import '../resources/assets_manager/assets_manager.dart';

class MyCollages extends StatelessWidget {
  const MyCollages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        centerTitle: true,
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back,size: 25,color: ColorManager.black,),),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt,size: 25,color: ColorManager.black,))
       ],
        title: Text("My Collages",style: TextStyle(color: ColorManager.black,fontSize: 22,fontWeight: FontWeight.bold),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading:  CircleAvatar(
              radius: 20,
              child: Image.asset(ImageAssets.appleLogo),
            ),
            title:NameText(name: "username",s:20 ,) ,
            subtitle: SubText(name: "55m"),
            trailing: IconButton(onPressed: (){},icon: Icon(Icons.file_download_outlined),color: ColorManager.black,iconSize: 35),
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: ColorManager.darkPrimary,
          ),
          Row(
            children: [
            NameText(name: 'Collage name', s: 20),
              SizedBox(width: 150,),
              IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 25,color: ColorManager.black,)),
            ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: ColorManager.primary),onPressed:  (){},icon: Icon(Icons.shopping_cart),label: Text('')),
            ],
          ),
          CustomElevatedBotttom(name:'Edit collage' ,w: 330,h:40 ,onpressed:(){} ,)
        ],
      ),
    );
  }
}
