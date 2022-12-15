import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';

import '../../app/widget/categories_shap.dart';
import '../../app/widget/name_text.dart';
import '../../app/widget/product_name_listtile.dart';
import '../../app/widget/sub_text.dart';
import '../resources/color_manager/color_manager.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        centerTitle: true,
        title: Text("Product details",style: TextStyle(color: ColorManager.black,fontSize: 22,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back,size: 25,color: ColorManager.black ,),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: ColorManager.grey1,
              ),
              SizedBox(height: 20,),
              ProductNameListtile(),
              SizedBox(height: 20,),

              Text('Dimension',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SubText(name: '230 cm * 50 cm',),
              SizedBox(height: 40,),

              NameText(name: 'Shipping to Egypt',s: 22),
              SubText(name: 'Free Shipping on orders over LE 0.00 in \n 3-5 business days',),
              SizedBox(height: 30,),

              NameText(name: 'Specifications',s: 22,),
              Row(

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubText(name: 'Material'),
                      SubText(name: 'Color'),
                      SubText(name: 'Length'),
                      SubText(name: 'Fit'),
                      SubText(name: 'Occasion'),
                      SubText(name: 'Care Instructions'),
                    ],
                  ),
                SizedBox(width: 130,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start  ,
                    children: [
                      NameText(name: "Denim Jeans",s: 15,),
                      NameText(name: "Blue",s: 15,),
                      NameText(name: "Short Jumpsuit",s: 15,),
                      NameText(name: "Regular",s: 15,),
                      NameText(name: "Casual",s: 15,),
                      NameText(name: "Machine wash",s: 15,),

                    ],
                  ),

                ],
              ),
              SizedBox(height: 30,),
              NameText(name: 'Similar Products', s: 20),
              CategorieShap(),
              SizedBox(height: 20,),
              Center(child: CustomElevatedBotttom(h: 50,w: 330,onpressed: (){},name: 'Add to Editor',))
            ],
          ),
        ),
      ),
    );
  }
}
