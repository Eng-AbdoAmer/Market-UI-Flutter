import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
   ProfileListTile({Key? key,this.Title,this.SubTitle,this.onPressed}) : super(key: key);
  String? Title;
  String? SubTitle;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(Title!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      subtitle: Text(SubTitle!,style: TextStyle(fontSize: 13),),
      trailing: IconButton(onPressed: onPressed,icon: Icon(Icons.arrow_forward_ios_outlined,size: 25,),),
      leading: Container(width: 100,),
    );
  }
}
