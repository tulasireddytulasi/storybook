import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:storybook/app/core/theme/filled_button_theme_style.dart';
import 'package:storybook/app/core/utils/color_palette.dart';
import 'package:storybook/app/core/utils/styles.dart';
import 'package:storybook/app/widget/google_login_widget.dart';
import 'package:storybook/app/widget/primary_filled_button.dart';
import 'package:storybook/app/widget/text_form_field_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Container(
                  alignment: Alignment.center,
                  child: const AutoSizeText(
                    "Sign In",
                    style: TextStyles.mediumBlack1Bold26,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: const AutoSizeText(
                    "Hi! Welcome back, you've been missed",
                    style: TextStyles.mediumLightBlack12,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 36),
                Container(
                  alignment: Alignment.topLeft,
                  child: const AutoSizeText(
                    "Email",
                    style: TextStyles.mediumBlack14,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  key: const Key("email"),
                  controller: emailController,
                  hintText: "Enter your email",
                  hintStyle: TextStyles.mediumLightBlack14,
                  parametersValidate: "This field is required",
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: const AutoSizeText(
                    "Password",
                    style: TextStyles.mediumBlack14,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  key: const Key("password"),
                  controller: passwordController,
                  hintText: "Enter your password",
                  hintStyle: TextStyles.mediumLightBlack14,
                  parametersValidate: "This field is required",
                  obscureText: true,
                  showSuffixIcon: true,
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {},
                    child: const AutoSizeText(
                      "Forget Password?",
                      style: TextStyles.mediumBlueUnderline14,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryFilledButton(
                    buttonThemeStyle: const FilledButtonThemeStyle(disabledTextColor: Colors.white),
                    buttonTitle: "Sign In",
                    widgetKey: "sign_in_key",
                    isLoading: false,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: ColorPalette.lightBlack2,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: AutoSizeText(
                        "Or sign in with",
                        style: TextStyles.mediumLightBlack14,
                        maxLines: 1,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: ColorPalette.lightBlack2,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const GoogleLoginWidget(),
                const SizedBox(height: 30),
                const AutoSizeText.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Don't have an account?", style: TextStyles.mediumBlack14),
                      TextSpan(text: " Sign Up", style: TextStyles.mediumBlueUnderline14),

                      // WidgetSpan(
                      //   child: InkWell(
                      //     onTap: () {
                      //       print("ss");
                      //     },
                      //     child: const Text(
                      //       " Sign Up",
                      //       style: TextStyles.mediumBlueUnderline14,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  minFontSize: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
