import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/app/widget/custom_ElevatedBotton.dart';
import 'package:market/app/widget/custom_textFormField.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        },icon:Icon(Icons.arrow_back,color: ColorManager.black,) ,iconSize: 25),
        backgroundColor: ColorManager.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Add an address",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: ColorManager.black),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Address",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: ColorManager.black),),
              SizedBox(height: 10,),
              CustomTextFormField(obscureText: false,textInputType: TextInputType.streetAddress,HintText: "Add your delivery address",),
              SizedBox(height: 10,),
              Text("Contact number",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: ColorManager.black),),
              SizedBox(height: 10,),
              CustomTextFormField(obscureText: false,textInputType: TextInputType.phone,HintText: "Phone number",),
              SizedBox(height: 10,),
              Text("Location",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: ColorManager.black),),
              SizedBox(height: 10,),
              DropdownButton<String>(isExpanded: true,items: ["cairo","mansoura","banha"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(), onChanged: (value){},iconSize: 30,icon: Icon(Icons.arrow_drop_down_outlined,color: ColorManager.grey),hint: Text("City")),
              SizedBox(height: 10,),
              DropdownButton<String>(isExpanded: true,items: ["cairo","mansoura","banha"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(), onChanged: (value){},iconSize: 30,icon: Icon(Icons.arrow_drop_down_outlined,color: ColorManager.grey),hint: Text("Area")),
              SizedBox(height: 10,),
              Text("Directions",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: ColorManager.black),),
              SizedBox(height: 10,),
              CustomTextFormField(obscureText: false,textInputType: TextInputType.phone,HintText: "Street name",),
              SizedBox(height: 10,),
              CustomTextFormField(obscureText: false,textInputType: TextInputType.phone,HintText: "Building name/number",),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 120,
                      child: CustomTextFormField(obscureText: false,textInputType: TextInputType.text,HintText: "Floor number",)),
                  SizedBox(
                      width: 120,
                      child: CustomTextFormField(obscureText: false,textInputType: TextInputType.number,HintText: "Flat number",)),

                ],
              ),
              SizedBox(height: 20,),
              Center(child: CustomElevatedBotttom(name: "Save address",onpressed: (){},w: 250,h: 40,))
            ],
          ),
        ),
      ),
    );
  }
}
