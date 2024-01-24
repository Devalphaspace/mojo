import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Screens/RegistrationScreen/registration_screen.dart';

import '../../Shared/shared.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          FocusManager.instance.primaryFocus!.unfocus();
        });
      },
      child: Scaffold(
        backgroundColor: ColorConstants().mojoLight,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 36,
            ),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MojoLogo(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.3,
                      child: Image.asset(
                        "assets/—Pngtree—three dimensional birthday cake 3d_9043861.png",
                        fit: BoxFit.contain,
                        width: Get.width,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Welcome back user!",
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoDark,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Craving satisfaction? Sign in to MOJO and let the flavors unfold. 🌮🔥",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoGrayish,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants().mojoGrayish,
                      ),
                    ),
                    const SizedBox(height: 6),
                    PrimaryTextFormField(
                      hintText: 'Enter your username here',
                      isObscure: false,
                      textEditingController: usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Password",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants().mojoGrayish,
                      ),
                    ),
                    const SizedBox(height: 6),
                    PrimaryTextFormField(
                      hintText: 'Enter your password here',
                      isObscure: true,
                      textEditingController: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the password';
                        } else if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants().mojoGrayish,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                const Spacer(),
                PrimaryButton(
                  btnName: 'Login',
                  onPressed: () {},
                ),
                const SizedBox(height: 12),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Don’t have an Account? ',
                        style: TextStyle(
                          color: Color(0xFF8D94BA),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Register Here',
                        style: const TextStyle(
                          color: Color(0xFFE63462),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () => Get.to(()=>RegistrationScreen()),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
