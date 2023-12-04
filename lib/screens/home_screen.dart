import 'package:bond_trade_demo/screens/bonds_list_screen.dart';
import 'package:bond_trade_demo/screens/news_screen.dart';
import 'package:bond_trade_demo/screens/profile_screen.dart';
import 'package:bond_trade_demo/screens/wishlist_screen.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = const [
    BondListScreen(),
    WishlistScreen(),
    NewsScreen(),
    ProfileScreen(),
  ];

  List<BarItem> barItems = [
    BarItem(
      filledIcon: FontAwesome.arrow_trend_up,
      outlinedIcon: HeroIcons.arrow_trending_up,
    ),
    BarItem(
      filledIcon: HeroIcons.bookmark,
      outlinedIcon: FontAwesome.bookmark,
    ),
    BarItem(
      filledIcon: HeroIcons.newspaper,
      outlinedIcon: FontAwesome.newspaper,
    ),
    BarItem(
      filledIcon: FontAwesome.user_check,
      outlinedIcon: HeroIcons.user,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 82,
        child: WaterDropNavBar(
          barItems: barItems,
          waterDropColor: AppColors.primaryColor,
          bottomPadding: 30,
          selectedIndex: selectedIndex,
          iconSize: 24,
          onItemSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
