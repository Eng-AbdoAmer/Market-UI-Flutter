import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class NameText extends StatelessWidget {
   NameText({Key? key,required this.name,required this.s}) : super(key: key);
  String name;
  double s;
  @override
  Widget build(BuildContext context) {
    return Text(name,style: TextStyle(fontSize: s,color: ColorManager.black,),);
  }
}
