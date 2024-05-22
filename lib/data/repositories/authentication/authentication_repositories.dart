import 'package:ecommerce/screens/auth_screens/login_screen/login.dart';
import 'package:ecommerce/screens/onboarding_screen/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// variable
  final deviceStorage = GetStorage();

  @override
  void onReady() {
    // super.onInit();
    super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async {
    print(deviceStorage.read("IsFirstTime"));
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }
}
