import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';

import '../../Shared/shared.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  int selectedAddress = 0;

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
                        "Address",
                        style: GoogleFonts.inter(
                          color: ColorConstants().mojoDark,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Time to feast! Enter your address for doorstep delights on MOJO. 🏡🍕",
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
                        "Address (Area & Street)",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your Address here',
                        isObscure: false,
                        textEditingController: addressController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "City/District/Town",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your City/District/Town here',
                        isObscure: false,
                        textEditingController: cityController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your City/District/Town';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "State",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your State here',
                        isObscure: false,
                        textEditingController: stateController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the State';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Landmark (Optional)",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your Landmark here',
                        isObscure: false,
                        textEditingController: landmarkController,
                        validator: (value) {
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Phone Number",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      PrimaryTextFormField(
                        hintText: 'Enter your Phone Number here',
                        isObscure: false,
                        textEditingController: phoneNumberController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Phone Number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Address Type",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants().mojoGrayish,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedAddress = 0;
                              });
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectedAddress == 0
                                      ? ColorConstants().mojoPink
                                      : ColorConstants().mojoGrayish,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: selectedAddress == 0
                                  ? Icon(
                                      Icons.done,
                                      color: ColorConstants().mojoPink,
                                      size: 20,
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "Home",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: selectedAddress == 0
                                  ? ColorConstants().mojoPink
                                  : ColorConstants().mojoGrayish,
                            ),
                          ),
                          const SizedBox(width: 48),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedAddress = 1;
                              });
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectedAddress == 1
                                      ? ColorConstants().mojoPink
                                      : ColorConstants().mojoGrayish,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: selectedAddress == 1
                                  ? Icon(
                                      Icons.done,
                                      color: ColorConstants().mojoPink,
                                      size: 20,
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "Office",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: selectedAddress == 1
                                  ? ColorConstants().mojoPink
                                  : ColorConstants().mojoGrayish,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  PrimaryButton(
                    btnName: 'Save',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Skip",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants().mojoGrayish,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
