import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../presentation/resources/color_manager/color_manager.dart';
import '../../presentation/resources/routes_manager/routes_manager.dart';

class ProductNameListtile extends StatelessWidget {
  const ProductNameListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Product Name",style: TextStyle(fontSize: 20),),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("LE 0.00",style: TextStyle(fontSize: 17,decoration: TextDecoration.lineThrough,color: ColorManager.grey1),),
          SizedBox(width: 15,),
          Text("LE 0.00",style: TextStyle(fontSize: 17,color: ColorManager.black),)
        ],),
      trailing: SizedBox(
          height:50,width:60,
          child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: ColorManager.primary),onPressed: (){Get.toNamed(Routes.cartPage);}, icon: Icon(Icons.shopping_cart),label: Text(''),)),
    );
  }
}
