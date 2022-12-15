import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class CustomElevateBwithIcon extends StatelessWidget {
  const CustomElevateBwithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primary ),
        onPressed: (){},
        label:Text("Add to Cart",style: TextStyle(fontSize: 20),),
        icon:Icon(Icons.shopping_cart) ,),
    );
  }
}
