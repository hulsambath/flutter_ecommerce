import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_color/app_color.dart';

class MyTextTheme {
  MyTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0.sp, fontWeight: FontWeight.bold, color: AppColor.dark),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 26.0.sp, fontWeight: FontWeight.w600, color: AppColor.dark),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: AppColor.dark),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w500, color: AppColor.dark),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w400, color: AppColor.dark),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: AppColor.dark),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.normal, color: AppColor.dark),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: AppColor.dark),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0.sp, fontWeight: FontWeight.normal, color: AppColor.dark),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0.sp, fontWeight: FontWeight.normal, color: AppColor.dark),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0.sp, fontWeight: FontWeight.bold, color: AppColor.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 26.0.sp, fontWeight: FontWeight.w600, color: AppColor.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: AppColor.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w500, color: AppColor.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w400, color: AppColor.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: AppColor.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.normal, color: AppColor.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: AppColor.white),
    labelLarge: const TextStyle().copyWith(
        fontSize: 18.0.sp, fontWeight: FontWeight.normal, color: AppColor.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 18.0.sp, fontWeight: FontWeight.normal, color: AppColor.grey),
  );
}
