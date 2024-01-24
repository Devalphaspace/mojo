import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Screens/AddressScreen/address_screen.dart';

import '../../Shared/shared.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                  const SizedBox(height: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Registration",
                        style: GoogleFonts.inter(
                          color: ColorConstants().mojoDark,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Join the culinary adventure! Sign up on MOJO now. 🍽️📲",
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
                  const SizedBox(height: 36),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your Full Name here',
                        isObscure: false,
                        textEditingController: fullnameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Full Name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Email",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your email here',
                        isObscure: false,
                        textEditingController: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (value.isEmail) {
                            return 'Please enter a valid email';
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
                      const SizedBox(height: 16),
                      Text(
                        "Confirm Password",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your password here again',
                        isObscure: true,
                        textEditingController: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the password';
                          } else if (value.toString() ==
                              passwordController.text) {
                            return 'Password must be same';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  // const Spacer(),
                  const SizedBox(height: 48),
                  PrimaryButton(
                    btnName: 'Register',
                    onPressed: () {
                      Get.to(() => AddressScreen());
                    },
                  ),
                  const SizedBox(height: 12),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Already have an Account? ',
                          style: TextStyle(
                            color: Color(0xFF8D94BA),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Login Here',
                          style: const TextStyle(
                            color: Color(0xFFE63462),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => RegistrationScreen()),
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
      ),
    );
  }
}
