import 'package:flutter/material.dart';
import 'package:market/app/widget/sub_text.dart';

import '../../presentation/resources/color_manager/color_manager.dart';
import 'name_text.dart';

class CategoriesList extends StatelessWidget {
   CategoriesList({Key? key,required this.urlPhono,required this.nameTextList,required this.isclick,required this.sizeList}) : super(key: key);
 String urlPhono;
  String nameTextList;

  bool isclick=false;
  
  double sizeList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           SizedBox(
               width: 120,height: 100,
               child: Image.network(urlPhono,fit: BoxFit.cover)),
            SizedBox(width: 10,),
            NameText(name:nameTextList ,s: sizeList,),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
