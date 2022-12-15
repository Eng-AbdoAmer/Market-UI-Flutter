import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:market/data/onboarding_controller/onboarding_controller.dart';
import 'package:market/presentation/resources/color_manager/color_manager.dart';
import 'onboarding_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
var onBoardingController =OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark),
      ),
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged:onBoardingController.pageIndex,
             controller: onBoardingController.controller,
              itemCount: onBoardingController.getSliderData.length,
              itemBuilder: (context,index){
                return OnBoardingPage(onBoardingController.getSliderData[index]);
              }),
          const SizedBox(height: 20),
          Positioned(
            bottom: 200,
            right: 30,
            left: 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List<Widget>.generate(
                    onBoardingController.getSliderData.length, (int index){
                  return Obx((){
                    return Container(
                        height: 10,
                        width: (index == onBoardingController.pageIndex.value)?30:10,
                        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:(index == onBoardingController.pageIndex.value)?Colors.redAccent:Colors.grey,
                        ),
                      );
                    }
                  );
                })
            ),
          ),
          const SizedBox(height: 20),
          Positioned(
            bottom: 170,
            right: 30,
            left: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:const Size(250, 50),
                  backgroundColor: Colors.black,
                ),
                onPressed: (){
                 onBoardingController.onclick(context);
                },
              child:Obx((){
                  return Text(onBoardingController.isLastPage?'Get started':'Next',style: TextStyle(color: ColorManager.white,fontSize:16,fontWeight: FontWeight.bold));
            }) ,
            ),
          ),
        ],
      ),
    );
  }

}
