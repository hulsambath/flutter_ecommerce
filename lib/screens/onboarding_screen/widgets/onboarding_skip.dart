import 'package:ecommerce/configs/app_size/app_size.dart';
import 'package:ecommerce/controller/onboarding_controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width * 0.8,
        top: appbarHeight,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: Text("Skip")));
  }
}
