import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Shared/shared.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.5,
                width: Get.width,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      "assets/meritt-thomas-Ao09kk2ovB0-unsplash.jpg",
                      height: Get.height * 0.5,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/shopping-cart.svg',
                              color: ColorConstants().mojoDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: Get.height * 0.1,
                        width: Get.width,
                        padding: const EdgeInsets.only(top: 36),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              ColorConstants().mojoLight,
                            ],
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: ColorConstants().mojoPink,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: ColorConstants().mojoGrayish,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: ColorConstants().mojoGrayish,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'CAKE',
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoGrayish,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/star-06.svg',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '4.5',
                              style: GoogleFonts.inter(
                                color: ColorConstants().mojoPink,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'CHOCOLATY VANILLA',
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoDark,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '₹ 150.00',
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Text(
                          '₹ 250.00',
                          style: GoogleFonts.inter(
                            color: ColorConstants().mojoGrayish,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE63462),
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: Text(
                            '100.00 gms',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoPink,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: ColorConstants().mojoGrayish,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: Text(
                            '250.00 gms',
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoGrayish,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Product Description',
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoDark,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: Get.width,
                      child: Text(
                        'A toothsome treat for the sugar lovers who are just passionate\nabout chocolate and relish the mushiness of cake. Made of two\nlayers of impossibly moist chocolate filled with mushy rich cream,\nthis cake carries the enticing aroma of Vanilla and sumptuousness\nof chocolate. On top of it, the cake is garnished with handcrafted\nwhite and brown chocolate. Need I say more?',
                        style: GoogleFonts.inter(
                          color: ColorConstants().mojoGrayish,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: ColorConstants().mojoGrayish.withOpacity(0.25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/truck-02.svg',
                              ),
                              const SizedBox(height: 16),
                              Text(
                                '100% on \nTime Delivery',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: ColorConstants().mojoDark,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: 1,
                            color: ColorConstants().mojoDark,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/check-verified-02.svg',
                              ),
                              const SizedBox(height: 16),
                              Text(
                                '100% Fresh\n& Hygenic',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: ColorConstants().mojoDark,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: Get.height * 0.1,
                            width: 1,
                            color: ColorConstants().mojoDark,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/check-verified-02.svg',
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'FSSAI\nCertified',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: ColorConstants().mojoDark,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: Get.width,
          height: Get.height * 0.1,
          color: ColorConstants().mojoLight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE63462)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '+',
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoPink,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '1',
                      style: GoogleFonts.inter(
                        color: Color(0xFF333745),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '-',
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoPink,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              PrimaryButton(
                btnName: 'Buy Now',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
