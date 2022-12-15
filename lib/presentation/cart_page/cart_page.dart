import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/app/widget/name_text.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';
import 'package:market/presentation/resources/routes_manager/routes_manager.dart';

import '../../app/widget/cart_list.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        centerTitle: true,
        title: Text("My cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: ColorManager.black),),),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CartList(),
              SizedBox(height: 15,),
              CartList(),
              SizedBox(height: 15,),
              CartList(),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    NameText(name: "Subtotal", s: 17),
                      SizedBox(height: 15,),
                      NameText(name: "Shipping Fees", s: 17),
                      SizedBox(height: 15,),
                      NameText(name: "VAT", s: 17),
                      SizedBox(height: 20,),
                      Text("Total Fees",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: ColorManager.black),)
                  ],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    NameText(name: "LE 0,00", s: 17),
                      SizedBox(height: 15,),
                      NameText(name: "LE 0,00", s: 17),
                      SizedBox(height: 15,),
                      NameText(name: "LE 0,00", s: 17),
                      SizedBox(height: 20,),
                      Text("LE 0,00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: ColorManager.black),)
                  ],),
                ],),
              SizedBox(height: 20,),
              CustomElevatedBotttom(name: "Continue",onpressed: (){
                Get.toNamed(Routes.registerRoute);
              },h: 40,w: 250,)

              ],
          ),
        ),
      ) ,
    );
  }


}
