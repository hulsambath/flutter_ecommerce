import 'package:ecommerce/configs/app_size/app_size.dart';
import 'package:ecommerce/controller/onboarding_controller/onboarding_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class OnboardingNextBtn extends StatelessWidget {
  const OnboardingNextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: lg,
        top: appbarHeight,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          child: Icon(FluentIcons.next_24_regular),
        ));
  }
}
