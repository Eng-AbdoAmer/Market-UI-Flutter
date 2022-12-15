import 'package:flutter/material.dart';
import 'package:market/presentation/resources/app_strings/app_strings.dart';
import '../../domain/models/models.dart';
import '../resources/routes_manager/routes_manager.dart';

class OnBoardingPage extends StatefulWidget {
  final SliderObject _sliderObject;
   const OnBoardingPage(this._sliderObject , {Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            child: Text(AppStrings.skip,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.end,
            ),

            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
          ),
        ),
        const SizedBox(height: 40),
        Image.asset(widget._sliderObject.image,),
        Padding(
          padding:  const EdgeInsets.all(8),
          child: Text(
            widget._sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding:  const EdgeInsets.all(8),
          child: Text(
            widget._sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}

