import 'package:flutter/material.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    this.onPressed,
    this.height = 55,
    this.fontSize = 16,
    this.borderRadius = 23,
    this.buttonText = "",
  });

  final Function()? onPressed;
  final double height;
  final double fontSize;
  final double borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ConstantColors.orange,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius))),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(
                color:Colors.black,fontWeight: FontWeight.w600, fontSize: 16),
          )),
    );
  }
}
