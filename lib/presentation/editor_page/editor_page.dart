
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/data/editor_controller/editor_controller.dart';
import '../../app/widget/custom_ElevateBwithIcon.dart';
import '../../app/widget/scroll_categories.dart';
import '../resources/color_manager/color_manager.dart';

class EditorPage extends StatelessWidget {
   EditorPage({Key? key}) : super(key: key);
var editControlleer =EditorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        leading: IconButton(onPressed: (){
          // Navigator.pop(context);
          Get.back();
          // Get.toNamed(Routes.homePage);
        },icon: Icon(Icons.arrow_back,size: 25,color: ColorManager.black,),),
        actions: [
          IconButton(onPressed: (){
            editControlleer.clickCamera();
          },icon: Icon(Icons.camera_alt,size: 25,color: ColorManager.black,),),
          IconButton(onPressed: () {
            editControlleer.clickGallery();
          },icon: Icon(Icons.file_download_outlined,size: 25,color: ColorManager.black,),),
        ],
      ),
      body: Column(
        children: [
            Expanded(
              flex: 2,
              child:editControlleer.myImage.toString().isEmpty?Image.file(editControlleer.myImage!,fit: BoxFit.cover,):Container(
                height: 200,
                color: ColorManager.black,
                child: Center(child: Text("Add products to create \n   your first collage",style: TextStyle(color: ColorManager.white,fontSize: 20),),),
              ),
    ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",style: TextStyle(color: ColorManager.black,fontSize:20,fontWeight: FontWeight.bold ),),
                TextButton(onPressed: (){}, child:Text("View All",style: TextStyle(color: ColorManager.black,fontSize:20, ),)
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              flex: 1,
              child: Container(
                height: 200,
               child: ScrollCategorise(),

              ),
            ),
          ),
          const SizedBox(height: 10,),
          CustomElevateBwithIcon(),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
