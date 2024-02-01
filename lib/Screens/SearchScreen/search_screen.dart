import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      body: SafeArea(
        child: Container(
          height: Get.height,
          padding: const EdgeInsets.all(16),
          // width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _textEditingController,
                validator: (value) {
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants().mojoDark,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants().mojoDark,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1.5,
                      color: ColorConstants().mojoDark,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1.5,
                      color: ColorConstants().mojoDark,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      width: 1,
                      color: ColorConstants().mojoPink,
                    ),
                  ),
                  labelText: 'Search here',
                  labelStyle: GoogleFonts.inter(
                    color: ColorConstants().mojoGrayish,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: ColorConstants().mojoGrayish,
                      size: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                height: Get.height * 0.1,
                width: Get.width,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorConstants().mojoLight,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F8D94BA),
                      blurRadius: 30,
                      offset: Offset(5, 5),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/sara-cervera-zEwgRzJJIvk-unsplash.jpg',
                        height: Get.height * 0.1,
                        width: Get.height * 0.115,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chocolaty Vanilla',
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoDark,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.575,
                          child: Text(
                            'A toothsome treat for the sugar lovers who are just passionate about chocolate and...',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoGrayish,
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
