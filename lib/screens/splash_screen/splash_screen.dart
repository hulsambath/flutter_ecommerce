import 'package:flutter/material.dart';

import '../../configs/theme/text_theme.dart';
import '../../utils/helper/helper_functions.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpFunctions.isDarkMode(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo/logo.png"),
            // SizedBox(
            //   height: 24,
            // ),
            Text("EYES DISEASES",
                style: dark
                    ? MyTextTheme.darkTextTheme.headlineLarge
                    : MyTextTheme.lightTextTheme.headlineLarge),
            Text("DETECTOR",
                style: dark
                    ? MyTextTheme.darkTextTheme.headlineLarge
                    : MyTextTheme.lightTextTheme.headlineLarge),
          ],
        ),
      ),
    );
  }
}
