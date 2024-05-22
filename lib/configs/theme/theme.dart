import 'package:ecommerce/configs/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../app_color/app_color.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.white,
      textTheme: MyTextTheme.lightTextTheme,
      colorScheme: const ColorScheme(
          primary: AppColor.primary,
          secondary: AppColor.lightGrey,
          surface: AppColor.light,
          background: AppColor.black,
          error: AppColor.error,
          onPrimary: AppColor.light,
          onSecondary: AppColor.lightGrey,
          onSurface: AppColor.black,
          onBackground: AppColor.dark,
          onError: AppColor.white,
          brightness: Brightness.light)
          .copyWith(background: AppColor.white));
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.black,
      textTheme: MyTextTheme.darkTextTheme,
      colorScheme: const ColorScheme(
          primary: AppColor.primary,
          secondary: AppColor.primary,
          surface: AppColor.dark,
          background: AppColor.black,
          error: AppColor.error,
          onPrimary: AppColor.dark,
          onSecondary: AppColor.grey,
          onSurface: AppColor.white,
          onBackground: AppColor.grey,
          onError: AppColor.error,
          brightness: Brightness.dark)
          .copyWith(background: AppColor.black));
}
