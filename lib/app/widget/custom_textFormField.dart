import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({Key? key,
     required this.obscureText,
     this.suffixIcon,
     this.textInputType,
     this.HintText})
       : super(key: key);
 String? HintText;
 IconButton? suffixIcon;
 bool obscureText = false;
 TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: HintText,
        suffixIcon:suffixIcon,
      ),
    );
  }
}
