import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../configs/app_color/app_color.dart';
import '../configs/app_size/app_size.dart';

class MyButton extends StatelessWidget {
  final String name;
  final bool dark;
  final void Function()? onPressed;
  const MyButton(
      {super.key,
      required this.dark,
      required this.name,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: sm),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? AppColor.primary : AppColor.primary),
        child: Text(
          name,
          style: dark
              ? TextStyle(
                  fontSize: fLg,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white)
              : TextStyle(
                  fontSize: fLg,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white),
        ),
      ),
    );
  }
}
