import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class SubText extends StatelessWidget {
   SubText({Key? key,required this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,style: TextStyle(fontSize: 15,color: ColorManager.grey1),);
  }
}
