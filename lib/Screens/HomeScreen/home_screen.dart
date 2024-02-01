import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojo_food_ordering_app/Constants/color_constants.dart';
import 'package:mojo_food_ordering_app/Screens/ProductDetailScreen/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> menu_list = ['Cakes', 'Drinks', 'Brakefasts'];
  List<Map<String, String>> best_seller_menu = [
    {
      'img': 'assets/meritt-thomas-Ao09kk2ovB0-unsplash.jpg',
      'name': 'Chocolaty Caramel',
    },
    {
      'img': 'assets/luisana-zerpa-MJPr6nOdppw-unsplash.jpg',
      'name': 'Santa\'s Fav Vanilla',
    },
    {
      'img': 'assets/jr-r-90HdOlGbjck-unsplash.jpg',
      'name': 'Chocolaty Blust',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants().mojoLight,
        centerTitle: false,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/shopping-cart.svg',
              color: ColorConstants().mojoDark,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                height: 36,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: menu_list.length,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Text(
                            menu_list[index],
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoDark,
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        : Text(
                            menu_list[index],
                            style: GoogleFonts.inter(
                              color: ColorConstants().mojoGrayish,
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 36);
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Best Seller',
                    style: GoogleFonts.inter(
                      color: ColorConstants().mojoDark,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      fixedSize: const Size(72, 24),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'view all',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.inter(
                        color: ColorConstants().mojoGrayish,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.24,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => const ProductDetailScreen());
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: Get.height * 0.215,
                              width: Get.width * 0.4,
                              constraints: BoxConstraints(
                                maxHeight: Get.height * 0.215,
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorConstants().mojoLight,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstants()
                                        .mojoGrayish
                                        .withOpacity(0.25),
                                    blurRadius: 30,
                                    offset: const Offset(5, 5),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      best_seller_menu[index]["img"]!,
                                      fit: BoxFit.cover,
                                      height: Get.height * 0.125,
                                      width: Get.width * 0.4,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  SizedBox(
                                    width: Get.width * 0.375,
                                    child: Text(
                                      best_seller_menu[index]["name"]!,
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                        color: ColorConstants().mojoDark,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.only(bottom: 3),
                            decoration: BoxDecoration(
                              color: ColorConstants().mojoGreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: GoogleFonts.inter(
                                  fontSize: 32,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstants().mojoLight),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 24);
                  },
                ),
              ),
              const SizedBox(height: 36),
              Text(
                'Search your favourite cake',
                style: GoogleFonts.inter(
                  color: ColorConstants().mojoDark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 16),
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
              Text(
                'Explore more by our #ExpertChief',
                style: GoogleFonts.inter(
                  color: ColorConstants().mojoDark,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.24,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => const ProductDetailScreen());
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: Get.height * 0.215,
                              width: Get.width * 0.4,
                              constraints: BoxConstraints(
                                maxHeight: Get.height * 0.215,
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorConstants().mojoLight,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstants()
                                        .mojoGrayish
                                        .withOpacity(0.25),
                                    blurRadius: 30,
                                    offset: const Offset(5, 5),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      best_seller_menu[index]["img"]!,
                                      fit: BoxFit.cover,
                                      height: Get.height * 0.125,
                                      width: Get.width * 0.4,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  SizedBox(
                                    width: Get.width * 0.375,
                                    child: Text(
                                      best_seller_menu[index]["name"]!,
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                        color: ColorConstants().mojoDark,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.only(bottom: 3),
                            decoration: BoxDecoration(
                              color: ColorConstants().mojoGreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: GoogleFonts.inter(
                                  fontSize: 32,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstants().mojoLight),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 24);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
