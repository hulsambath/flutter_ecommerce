import 'package:ecommerce/configs/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../configs/app_color/app_color.dart';
import '../configs/app_size/app_size.dart';
import '../configs/theme/text_theme.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final TextInputAction textInputAction;
  final bool dark;
  final bool visible;
  final IconButton? suffix;
  const MyTextFormField(
      {super.key,
      required this.hint,
      required this.controller,
      required this.keyBoardType,
      required this.textInputAction,
      required this.dark,
      required this.visible,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 84.h,
      padding: EdgeInsets.symmetric(horizontal: md, vertical: sm),
      // alignment: Alignment.bottomLeft,
      child: TextFormField(
        keyboardType: keyBoardType,
        textInputAction: textInputAction,
        maxLines: 1,
        controller: controller,
        obscureText: visible,
        // scrollPadding: EdgeInsets.symmetric(vertical: 0),
        style: dark
            ? MyTextTheme.darkTextTheme.labelLarge
            : MyTextTheme.lightTextTheme.labelLarge,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          suffixIcon: suffix,
          // suffixIconColor: AppColor.primary,
          suffixIconConstraints: BoxConstraints(
            minWidth: 0.0,
            maxWidth: 58.w,
            minHeight: 0.0,
            maxHeight: 44.h,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: lg, vertical: sm),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              color: AppColor.primary,
              width: 2.w,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              color: AppColor.primary,
              width: 2.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          filled: true, fillColor: ThemeData().colorScheme.onSurface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          hintText: hint,
          hintStyle: dark
              ? MyTextTheme.darkTextTheme.labelMedium
              : MyTextTheme.lightTextTheme.labelMedium,
          // fillColor: AppColor.black,
        ),
        // obscureText: true,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please ${hint.toLowerCase()}';
          }
          return null;
        },
        onSaved: (value) {},
      ),
    );
  }
}
