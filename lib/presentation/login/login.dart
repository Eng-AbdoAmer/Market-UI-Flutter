import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_textFormField.dart';

import '../../data/login_controller/login_controller.dart';
import '../resources/routes_manager/routes_manager.dart';

class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);
  var loginController=LoginController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              const Text(" LOGIN TO \n MY ACCOUNT",style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
              const SizedBox(height: 40,),
              const Text("Email address",style:TextStyle(fontSize: 15,color: Colors.black)),
              CustomTextFormField(obscureText: false,HintText: 'name@example.com',textInputType:TextInputType.emailAddress ),
              const SizedBox(height: 20,),
              const Text("Password",style:TextStyle(fontSize: 15,color: Colors.black)),
              Container(
                child: Obx(()=>
                   CustomTextFormField(
                     obscureText: loginController.isPassword.value,
                    textInputType: TextInputType.visiblePassword,
                    suffixIcon:IconButton(onPressed: (){
                      loginController.changeStatus();
                    },icon:loginController.isPassword.isTrue?const Icon(Icons.visibility_outlined):const Icon(Icons.visibility_off_outlined) ),),
                ),
              ),
              TextButton(child:const Text("Forgot Password",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black)),onPressed:(){Get.toNamed(Routes.forgetPassword);
              } ),
              const SizedBox(height: 250,),
              Center(child: TextButton(onPressed: (){}, child: const Text("NEXT",style:TextStyle(fontSize: 17,color: Colors.grey) ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("New to app?",style:TextStyle(fontSize: 17,color: Colors.black)),
                  TextButton(onPressed: (){Get.toNamed(Routes.registerRoute);}, child: const Text("Sign up",style:TextStyle(fontSize: 17,color: Colors.blue))),
                ],
              ),
              const SizedBox(height: 40,),

            ],
            ),
          ),
        ),
      ),
    );
  }
}
