import 'package:ecommerce/data/repositories/authentication/authentication_repositories.dart';
import 'package:ecommerce/provider/provider.dart';
import 'package:ecommerce/screens/onboarding_screen/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'configs/theme/theme.dart';
import 'firebase_options.dart';

Future<void> main() async {
  ///
  final WidgetsBinding widgetBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///
  await GetStorage.init();

  ///
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  ///
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            darkTheme: MyTheme.darkTheme,
            theme: MyTheme.lightTheme,
            home: const OnboardingScreen(),
          );
        },
      ),
    );
  }
}
