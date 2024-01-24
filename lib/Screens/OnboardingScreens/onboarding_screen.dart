import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Screens/LoginScreen/login_screen.dart';

import '../../Shared/shared.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, dynamic>> onBoardingDetails = [
    {
      "img":
          "assets/3d-rendering-delivery-man-character-with-scooter-illustration-object-png.webp",
      "tag": "Welcome to Sweet Delights!",
      "desc":
          "Let's satisfy your cravings with delectable cakes and refreshing beverages. Swipe through our menu to discover your favorites and start indulging!",
    },
    {
      "img": "assets/—Pngtree—three dimensional birthday cake 3d_9043861.png",
      "tag": "Customise Your Treats",
      "desc":
          "Personalise your order! Choose from a variety of flavours,  sizes, and add-ons to create your perfect cake-and-drink combo. Get ready to taste pure bliss!",
    },
    {
      "img": "assets/pngwing.com (1).png",
      "tag": "Get Exclusive Rewards",
      "desc":
          "Join our community and unlock sweet perks! From discounts on your birthday to early access to new flavours, there's always something delightful waiting for you.",
    },
  ];

  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MojoLogo(),
              SizedBox(
                height: Get.height * 0.6,
                width: Get.width,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 1),
                  itemCount: 3,
                  onPageChanged: (idx) {
                    setState(() {
                      carouselIndex = idx;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          onBoardingDetails[index]["img"],
                          fit: BoxFit.contain,
                          width: Get.width,
                        ),
                        const SizedBox(height: 36),
                        Text(
                          onBoardingDetails[index]["tag"],
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoDark,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          onBoardingDetails[index]["desc"],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoGrayish,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),
              PrimaryButton(
                btnName: 'Get Started',
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 6,
                width: Get.width * 0.65,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 6,
                      width: Get.width * 0.2,
                      decoration: BoxDecoration(
                        color: carouselIndex == index
                            ? ColorConstants().mojoPink
                            : ColorConstants().mojoGrayish,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
