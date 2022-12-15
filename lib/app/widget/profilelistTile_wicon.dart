import 'package:flutter/material.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';

class ProfileListTileWicon extends StatelessWidget {
   ProfileListTileWicon({Key? key,this.Title,this.SubTitle,this.Xicon,this.onPressed}) : super(key: key);
  String? Title;
  String? SubTitle;
  IconData? Xicon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(Title!,style: TextStyle(fontSize: 18,),),
      trailing: IconButton(onPressed: onPressed,icon: Icon(Icons.arrow_forward_ios_outlined,size: 25,),),
      leading: Icon(Xicon,color: ColorManager.black,size: 35,),
    );
  }
}
