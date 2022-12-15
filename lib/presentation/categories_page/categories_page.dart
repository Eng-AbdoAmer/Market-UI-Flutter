import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';
import '../../app/widget/categories_list.dart';
import '../../data/categories_controller/categories_controller.dart';


class CategoriesPage extends StatelessWidget {
   CategoriesPage({Key? key}) : super(key: key);
  //var categoriesController=CategoriesController();
   final CategoriesController categoriesController = Get.put(CategoriesController());
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: ColorManager.white,
          centerTitle: true,
        title: Text("categories list",style: TextStyle(color: ColorManager.black,fontSize: 22,fontWeight: FontWeight.bold),),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoriesController.allCategories.length,
                  itemBuilder: (context, index) =>CategoriesList(isclick: false,
                      urlPhono: categoriesController.allCategories[index].image,nameTextList:categoriesController.allCategories[index].name,sizeList:18 ),
              ),
            ),
            SizedBox(height: 10,),
            CustomElevatedBotttom(name: 'Add to Editor',onpressed: (){},w: 280,h: 40,),
                        ],
        ),
      ),
    );
  }

}
