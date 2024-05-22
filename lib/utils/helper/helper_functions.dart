import 'package:flutter/material.dart';

class HelpFunctions{
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark ? true : false;
  }
}