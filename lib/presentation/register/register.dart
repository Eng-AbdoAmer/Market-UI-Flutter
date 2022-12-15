import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/data/register_controller/register_controller.dart';import '../../app/widget/custom_textFormField.dart';
import '../resources/color_manager/color_manager.dart';
import '../resources/routes_manager/routes_manager.dart';



class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);
var registerController =RegisterController();
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
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              const Text(" CREATE  \n A NEW ACCOUNT",style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
              const SizedBox(height: 40,),
              const Text("Full Name",style:TextStyle(fontSize: 15,color: Colors.black)),
              CustomTextFormField(obscureText: false,HintText: 'John Luke',textInputType:TextInputType.name,suffixIcon: IconButton(onPressed: (){},icon: const Icon(Icons.done)), ),
              const SizedBox(height: 20,),
              const Text("Email address",style:TextStyle(fontSize: 15,color: Colors.black)),
              CustomTextFormField(obscureText: false,HintText: 'Suncairo@gmail.com',textInputType:TextInputType.emailAddress,suffixIcon: IconButton(onPressed: (){},icon: const Icon(Icons.done)), ),
              const SizedBox(height: 20,),
              const Text("Password",style:TextStyle(fontSize: 15,color: Colors.black)),
              Container(
                child: Obx(()=>
                    CustomTextFormField(
                      obscureText: registerController.isPassword.value,
                      textInputType: TextInputType.visiblePassword,
                      suffixIcon:IconButton(onPressed: (){
                        registerController.changeStatus();
                      },icon:registerController.isPassword.isTrue?const Icon(Icons.visibility_outlined):const Icon(Icons.visibility_off_outlined) ),),
                ),
              ),
              const SizedBox(height: 200,),
              Center(child: CustomElevatedBotttom(name: 'CREATE ACCOUNT',h:50 ,w: 250,onpressed: (){
                Get.toNamed(Routes.address);
              })),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style:TextStyle(fontSize: 17,color: Colors.black)),
                  TextButton(onPressed: (){Get.toNamed(Routes.loginRoute);}, child: const Text("Sign in",style:TextStyle(fontSize: 17,color: Colors.blue))),
                ],
              ),
              const SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );
  }
}
