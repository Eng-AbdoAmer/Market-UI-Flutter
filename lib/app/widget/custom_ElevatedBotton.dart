import 'package:flutter/material.dart';

class CustomElevatedBotttom extends StatelessWidget {
   CustomElevatedBotttom({Key? key,this.name,this.w,this.h,this.onpressed}) : super(key: key);
  String? name;
  double? w,h;
   void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize:  Size(w!, h!),
            backgroundColor: Colors.black),
        onPressed: onpressed, child:  Text(name!));
  }
}
