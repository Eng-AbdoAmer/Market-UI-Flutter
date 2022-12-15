import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class HomePageCountainer extends StatelessWidget {
  const HomePageCountainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorManager.black),
          color: Colors.black,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                height: 155 ,
                width: 122,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  border: Border.all(color: ColorManager.white,width: 5),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
              ),
            )
          ],
        ),
      ),
        Positioned(
            top: 40,
            left: 60,
            child: Text("main title ",style: TextStyle(color: ColorManager.white,fontWeight: FontWeight.bold,fontSize: 20),)),
        Positioned(
            top: 70,
            left: 60,
            child: Text("Subtitle ",style: TextStyle(color: ColorManager.white,fontSize: 15),)),
      ],
    );
  }
}
