import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/app/widget/custom_textFormField.dart';

import '../resources/color_manager/color_manager.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back_ios,color: ColorManager.black,)),
        backgroundColor: ColorManager.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              const Text("FORGET PASSWORD",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              const Text("Please enter your email address, you will \n receive a link to create a new password via",style: TextStyle(fontSize: 15,color: Color(0xff707070)),),
              const SizedBox(height: 100,),
              const Text("Email",style: TextStyle(color: Colors.black,fontSize: 15),),
              CustomTextFormField(obscureText: false,textInputType: TextInputType.emailAddress,),
              const SizedBox(height: 220,),
              Center(
                child:CustomElevatedBotttom(name: 'SEND',h: 50,w: 250,onpressed: (){}) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ElevatedButton(
// style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50), backgroundColor: Colors.black),
// onPressed: (){}, child: const Text("SEND"))
