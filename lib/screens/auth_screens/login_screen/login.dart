import 'package:ecommerce/screens/auth_screens/register_screen/register_screen.dart';
import 'package:ecommerce/screens/navigation_bar_screen/navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_color/app_color.dart';
import '../../../configs/app_constanst/constanst.dart';
import '../../../configs/app_size/app_size.dart';
import '../../../configs/theme/text_theme.dart';
import '../../../firebase_helper/firebase_auth/firebase_auth_helper.dart';
import '../../../utils/helper/helper_functions.dart';
import '../../../widget/my_button.dart';
import '../../../widget/my_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPassword = true;

  final _formKey = GlobalKey<FormState>();

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
                "LOGIN",
                style: dark
                    ? MyTextTheme.darkTextTheme.headlineLarge
                    : MyTextTheme.lightTextTheme.headlineLarge,
              ),
              SizedBox(
                height: xl,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: md),
                width: MediaQuery.of(context).size.width,
                child: MyTextFormField(
                  dark: dark,
                  hint: "Username or Email",
                  controller: emailController,
                  keyBoardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  visible: false,
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
                    hint: "Password",
                    controller: passwordController,
                    keyBoardType: TextInputType.text,
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
                            : const Icon(FluentIcons.eye_off_24_regular))),
              ),
              SizedBox(
                height: sm,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: dark
                      ? MyTextTheme.darkTextTheme.titleMedium
                      : MyTextTheme.lightTextTheme.titleMedium,
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
                    name: "Login",
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${emailController.text}");
                        print("Password: ${passwordController.text}");
                        bool isValidated = loginVaildation(
                            emailController.text, passwordController.text);
                        if (isValidated) {
                          bool isLogin = await FirebaseAuthHelper.instance
                              .login(emailController.text,
                                  passwordController.text, context);
                          if (isLogin) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar()));
                          }
                        }
                      }
                    },
                  )),
              SizedBox(
                height: lg,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
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
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
