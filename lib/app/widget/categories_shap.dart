import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class CategorieShap extends StatelessWidget {
  const CategorieShap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: InkWell(
              onTap: (){},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                    ),
                  ),
                  Text("dfgfgfghgjhghjh \n jgfdggfgfg",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),maxLines: 2,overflow: TextOverflow.ellipsis),
                  Text("EGP29.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            height: 260,
            decoration: BoxDecoration(
            ),),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Container(
            height: 260,
            child: InkWell(
              onTap: (){},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                    ),
                  ),
                  Text("dfgfgfghgjhghjhjgf \n dggfgfg",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),maxLines: 2,overflow: TextOverflow.ellipsis),
                  Text("EGP29.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            decoration: BoxDecoration(
            ),),
        ),
      ],
    );
  }
}
