import 'dart:async';
import 'package:flutter/material.dart';
import '../resources/assets_manager/assets_manager.dart';
import '../resources/color_manager/color_manager.dart';
import '../resources/constants_manager/constants_manager.dart';
import '../resources/routes_manager/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer( Duration(seconds: AppConstants.splashDelay), () =>
        Navigator.pushReplacementNamed(context,Routes.onBoardingRoute)
    );
  }
// final AppPreferences _appPreference = instance<AppPreferences>();
  // _goNext() async {
  //   _appPreference.isUserLoggedIn().then((isUserLoggedIn) => {
  //         if (isUserLoggedIn)
  //           {
  //             //navigate to main screen
  //             Navigator.pushReplacementNamed(context, Routes.mainRoute),
  //           }
  //         else
  //           {
  //             _appPreference
  //                 .isOnBoardingScreenViewed()
  //                 .then((isBoardingScreenView) => {
  //                       if (isBoardingScreenView)
  //                         {
  //                           //navigate to login
  //                           Navigator.pushReplacementNamed(
  //                               context, Routes.loginRoute)
  //                         }
  //                       else
  //                         {
  //                           //navigate to onBoarding
  //                           Navigator.pushReplacementNamed(
  //                               context, Routes.onBoardingRoute)
  //                         }
  //                     })
  //           }
  //       });
  // }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
        child: Image(
          image: AssetImage(ImageAssets.splash),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
