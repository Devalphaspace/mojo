import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mojo_food_ordering_app/Screens/ProfileScreen/profile_screen.dart';
import 'package:mojo_food_ordering_app/Screens/SearchScreen/search_screen.dart';

import '../../Constants/color_constants.dart';
import '../HomeScreen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _bottomNavIndex = 0;

  List<IconData> iconList = [
    Iconsax.home1,
    Iconsax.search_normal,
    Iconsax.profile_2user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().mojoLight,
      body: IndexedStack(
        index: _bottomNavIndex,
        children: const [
          HomeScreen(),
          SearchScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: ColorConstants().mojoLight,
        icons: iconList,
        activeColor: ColorConstants().mojoDark,
        inactiveColor: const Color(0xffC6C6C6),
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        shadow: BoxShadow(
          color: ColorConstants().mojoGrayish.withOpacity(0.25),
          blurRadius: 24,
          offset: const Offset(0, -4),
        ),
        iconSize: 28,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
