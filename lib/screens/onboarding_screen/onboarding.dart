import 'package:ecommerce/controller/onboarding_controller/onboarding_controller.dart';
import 'package:ecommerce/screens/onboarding_screen/widgets/onboarding_next_btn.dart';
import 'package:ecommerce/screens/onboarding_screen/widgets/onboarding_page.dart';
import 'package:ecommerce/screens/onboarding_screen/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
            OnboardingPage(text: "Onboarding Screen 1"),
              OnboardingPage(text: "Onboarding Screen 2"),
              OnboardingPage(text: "Onboarding Screen 3"),
          ],),
          OnboardingSkip(),
          OnboardingNextBtn()
        ],
      ),
    );
  }
}

