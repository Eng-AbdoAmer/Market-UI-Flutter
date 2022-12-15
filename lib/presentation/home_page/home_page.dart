import 'package:flutter/material.dart';
import 'package:market/app/widget/custom_Row_homePage.dart';
import '../../app/widget/categories_shap.dart';
import '../../app/widget/custom_listtile.dart';
import '../../app/widget/custom_search.dart';
import '../../app/widget/custom_textFormField.dart';
import '../../app/widget/home_page_container.dart';
import '../resources/assets_manager/assets_manager.dart';
import '../resources/color_manager/color_manager.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        leading: Image.asset(ImageAssets.appleLogo),
        actions: [
          IconButton(onPressed: (){},color: ColorManager.black,icon: const Icon(Icons.notifications_none_sharp),)
        ],
        title: Text("App name",style: TextStyle(color:ColorManager.black,fontSize: 20 ),),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomePageCountainer(),
             SizedBox(height: 10,),
               CustomRowToHomePage(),
              SizedBox(height: 10,),
              CustomSearch(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Collages",style: TextStyle(color: ColorManager.black,fontSize:20, ),),
                  TextButton(onPressed: (){}, child:Text("View All",style: TextStyle(color: ColorManager.black,fontSize:20, ),)
                  )
                ],
              ),
              SizedBox(height: 10,),
              CategorieShap(),
              SizedBox(height: 10,),
              CustomListtile(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best selling",style: TextStyle(color: ColorManager.black,fontSize:20, ),),
                  TextButton(onPressed: (){}, child:Text("View All",style: TextStyle(color: ColorManager.black,fontSize:20, ),)
                  )
                ],
              ),
              CategorieShap(),
            ],
          ),
        ),
      ),
    );
  }
}
