import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Shared/shared.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants().mojoLight,
        centerTitle: true,
        title: Text(
          'MOJO',
          style: GoogleFonts.inder(
            color: ColorConstants().mojoGreen,
            fontSize: 28,
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 7,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Get.height * 0.275),
                  child: Image.asset(
                    'assets/18354571 1.png',
                    height: Get.height * 0.275,
                    width: Get.height * 0.275,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 36),
                Text(
                  'John Wick',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: ColorConstants().mojoDark,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '@JohnWickTheGreat',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: ColorConstants().mojoGrayish,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 24),
                SecondaryButton(
                  btnName: 'Edit',
                  onPressed: () {},
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: Get.width,
                  decoration: ShapeDecoration(
                    color: ColorConstants().mojoGrayish.withOpacity(0.25),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: ShapeDecoration(
                              color: ColorConstants().mojoGrayish,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Iconsax.user_tick,
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            'Verification',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/button_arrow.svg',
                            color: ColorConstants().mojoDark,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: ShapeDecoration(
                              color: ColorConstants().mojoGrayish,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Iconsax.key,
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            'Change Password',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/button_arrow.svg',
                            color: ColorConstants().mojoDark,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: ShapeDecoration(
                              color: ColorConstants().mojoGrayish,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Iconsax.profile_2user,
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            'Refer a Friend',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/button_arrow.svg',
                            color: ColorConstants().mojoDark,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: ShapeDecoration(
                              color: ColorConstants().mojoGrayish,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Iconsax.logout,
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                          const SizedBox(width: 24),
                          Text(
                            'Logout',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/button_arrow.svg',
                            color: ColorConstants().mojoDark,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
