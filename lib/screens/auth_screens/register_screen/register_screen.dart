import 'package:ecommerce/screens/home_screen/home.dart';
import 'package:ecommerce/screens/navigation_bar_screen/navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import '../../../configs/app_color/app_color.dart';
import '../../../configs/app_size/app_size.dart';
import '../../../configs/theme/text_theme.dart';
import '../../../utils/helper/helper_functions.dart';
import '../../../widget/my_button.dart';
import '../../../widget/my_text_form_field.dart';
import '../login_screen/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  /// controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  /// form key
  final _formKey = GlobalKey<FormState>();

  bool isPassword = true;
  bool isConfirmPassword = true;

  // @override
  // void initState() {
  //   super.initState();
  //   emailController = TextEditingController();
  //   passwordController = TextEditingController();
  //   confirmController = TextEditingController();
  // }
  Future<void> register() async {
    if (passwordController.text != confirmController.text) {
      print("Password and Confirm Password are not the same");
    } else if (emailController.text != "" ||
        passwordController.text != "" ||
        confirmController.text != "") {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BottomNavBar()));
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Sign in successfully")));
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Error: $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelpFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: appbarHeight,
            ),
            SizedBox(
              height: lg,
            ),
            Text(
              "WELCOME",
              style: dark
                  ? MyTextTheme.darkTextTheme.headlineLarge
                  : MyTextTheme.lightTextTheme.headlineLarge,
            ),
            SizedBox(
              height: lg,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: md),
              width: MediaQuery.of(context).size.width,
              child: MyTextFormField(
                dark: dark,
                hint: "Enter your Email",
                controller: emailController,
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                visible: false,
              ),
            ),
            SizedBox(
              height: lg,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: md),
              width: MediaQuery.of(context).size.width,
              child: MyTextFormField(
                dark: dark,
                hint: "Enter Password",
                controller: passwordController,
                keyBoardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                visible: isPassword,
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: !isPassword
                        ? const Icon(FluentIcons.eye_24_regular)
                        : const Icon(FluentIcons.eye_off_24_regular)),
              ),
            ),
            SizedBox(
              height: xl,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: md),
              width: MediaQuery.of(context).size.width,
              child: MyTextFormField(
                dark: dark,
                hint: "Confirm Password",
                controller: confirmController,
                keyBoardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                visible: isConfirmPassword,
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isConfirmPassword = !isConfirmPassword;
                        });
                      },
                      icon: !isConfirmPassword
                          ? const Icon(FluentIcons.eye_24_regular)
                          : const Icon(FluentIcons.eye_off_24_regular))
              ),
            ),
            SizedBox(
              height: xl,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: lg),
                width: MediaQuery.of(context).size.width,
                child: MyButton(
                  dark: dark,
                  name: "Sign Up",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Email: ${emailController.text}");
                      print("Password: ${passwordController.text}");
                      print("Confirm: ${confirmController.text}");
                      register();
                    }
                  },
                )),
            SizedBox(
              height: xl,
            ),
            SizedBox(
              height: md,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: dark
                      ? MyTextTheme.darkTextTheme.titleMedium
                      : MyTextTheme.lightTextTheme.titleMedium,
                ),
                SizedBox(
                  width: xs,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
