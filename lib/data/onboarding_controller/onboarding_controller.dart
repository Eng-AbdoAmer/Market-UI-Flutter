import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../domain/models/models.dart';
import '../../presentation/resources/app_strings/app_strings.dart';
import '../../presentation/resources/assets_manager/assets_manager.dart';
import '../../presentation/resources/routes_manager/routes_manager.dart';

class OnBoardingController extends GetxController{
  @override
  void onInit() {
    controller.initialPage;
    super.onInit();
  }

var controller=PageController();
  RxInt pageIndex=0.obs;
  bool get isLastPage =>pageIndex.value==getSliderData.length-1;

  List<SliderObject> getSliderData= [
    SliderObject(AppStrings.onBoardingTitle,
        AppStrings.onBoardingSubTitle, ImageAssets.onboarding1),
    SliderObject(AppStrings.onBoardingTitle,
        AppStrings.onBoardingSubTitle, ImageAssets.onboarding2),
    SliderObject(AppStrings.onBoardingTitle,
        AppStrings.onBoardingSubTitle, ImageAssets.onboarding3),
  ];

  onclick(BuildContext context ){
    if(isLastPage){
      Navigator.pushReplacementNamed(context,Routes.homeRoute);
    }else{
      controller.nextPage(
          duration: Duration(milliseconds: 100),
          curve: Curves.slowMiddle);
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}