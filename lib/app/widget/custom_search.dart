import 'package:flutter/material.dart';

import '../../presentation/resources/color_manager/color_manager.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.text,
      decoration: InputDecoration(
          border:InputBorder.none ,
          suffixIcon: Container(
            width: 30,
            height: 50,
            decoration: BoxDecoration(
                color: ColorManager.black,
                borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.search,color: ColorManager.white,),
          ),
          hintText: "Search Categoties",
          hintStyle: TextStyle(color: ColorManager.grey1)
      ),
    );
  }
}
