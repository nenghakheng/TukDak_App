import 'package:expense_app_with_ocr/constants/constant.dart';
import 'package:expense_app_with_ocr/views/auth/login/local_widgets/alternative_divider.dart';
import 'package:expense_app_with_ocr/views/auth/login/local_widgets/login_button.dart';
import 'package:expense_app_with_ocr/views/auth/login/local_widgets/login_form.dart';
import 'package:expense_app_with_ocr/views/auth/login/local_widgets/google_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: buildBody(),
        ),
      ),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(ConfigConstant.paddingMedium),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildWelcomeMessageAndIcon(),
                ConfigConstant.boxLarge,
                const LoginForm(),
                ConfigConstant.boxLarge,
                ConfigConstant.boxLarge,
                const LoginButton(),
                ConfigConstant.boxLarge,
                ConfigConstant.boxMedium,
                const AlternativeDivider(),
                ConfigConstant.boxMedium,
                const GoogleLoginButton(),
                ConfigConstant.boxMedium,
                buildSignUpSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWelcomeIcon() {
    return SvgPicture.asset(
      'assets/icons/welcome_icon.svg',
      height: 125,
    );
  }

  Widget buildWelcomeMessageAndIcon() {
    return Column(
      children: [
        buildWelcomeIcon(),
        ConfigConstant.boxLarge,
        ConfigConstant.boxMedium,
        const Text(
          'Welcome Back!',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildSignUpSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?',
          style: TextStyle(
            fontSize: ConfigConstant.fontMedium,
          ),
        ),
        TextButton(
          onPressed: () {
            print('Sign up button pressed');
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: ConfigConstant.secondaryColor,
              fontSize: ConfigConstant.fontMedium,
            ),
          ),
        ),
      ],
    );
  }
}
