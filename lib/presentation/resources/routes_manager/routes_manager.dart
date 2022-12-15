import 'package:flutter/material.dart';
import 'package:market/presentation/address/address.dart';
import 'package:market/presentation/cart_page/cart_page.dart';
import 'package:market/presentation/categories_page/categories_page.dart';
import 'package:market/presentation/editor_page/editor_page.dart';
import 'package:market/presentation/forget_password/forget_password.dart';
import 'package:market/presentation/home_page/home_page.dart';
import 'package:market/presentation/my_collages/my_collages.dart';
import 'package:market/presentation/product_details/product_details.dart';
import 'package:market/presentation/profile_page/profile_page.dart';
import '../../home/home.dart';
import '../../login/login.dart';
import '../../onboarding/onboarding.dart';
import '../../register/register.dart';
import '../../splash_screen/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPassword = "/forgetPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String homeRoute = "/home";
  static const String homePage = "/homePage";
  static const String profilePage = "/profilePage";
  static const String categoriesPage = "/categoriesPage";
  static const String cartPage = "/cartPage";
  static const String editorPage = "/editorPage";
  static const String storeDetailsRoute = "/storeDetails";
  static const String productDetails = "/productDetails";
  static const String myCollages = "/myCollages";
  static const String address = "/address";
}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  Login());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) =>  const OnBoarding());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) =>  Home());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>  Register());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) =>  const HomePage());
      case Routes.profilePage:
        return MaterialPageRoute(builder: (_) =>   ProfilePage());
      case Routes.cartPage:
        return MaterialPageRoute(builder: (_) =>  const CartPage());
      case Routes.categoriesPage:
        return MaterialPageRoute(builder: (_) =>   CategoriesPage());
      case Routes.editorPage:
        return MaterialPageRoute(builder: (_) =>   EditorPage());
      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) =>   const ProductDetails());
      case Routes.myCollages:
        return MaterialPageRoute(builder: (_) =>   const MyCollages());
      case Routes.address:
        return MaterialPageRoute(builder: (_) =>   const Address());

      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text("no Route Found"),
          ),
          body: const Center(child: Text("no Route Found")),
        ));
  }

}