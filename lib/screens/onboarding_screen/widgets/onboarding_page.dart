import 'package:ecommerce/configs/app_size/app_size.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: md, vertical: sm),
      child: Text(text),
    );
  }
}
