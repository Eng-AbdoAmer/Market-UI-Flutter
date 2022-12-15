import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';
import 'name_text.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color:ColorManager.grey1,borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("This product full name",maxLines: 1,overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: ColorManager.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            NameText(name:"29.00", s: 18 ),
          ],),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.delete),color: ColorManager.grey,iconSize: 28,),
            SizedBox(height: 20,),
            Row(children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.remove),color: ColorManager.black,iconSize: 28,),
              NameText(name: '1', s: 15),
              IconButton(onPressed: (){}, icon: Icon(Icons.add),color: ColorManager.black,iconSize: 28,),
            ],)
          ],)
      ],);
  }
  }

