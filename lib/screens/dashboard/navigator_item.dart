import 'package:flutter/material.dart';
import 'package:grocerease/screens/account/account_screen.dart';
import 'package:grocerease/screens/cart/cart_screen.dart';
import 'package:grocerease/screens/explore_screen.dart';
import 'package:grocerease/screens/more_screen/more_screen.dart';
import 'package:grocerease/screens/home/home_screen.dart';
import 'package:grocerease/screens/login_screen/login_page.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Home", "assets/icons/shop_icon.svg", 0, HomeScreen()),
  NavigatorItem("Categories", "assets/icons/explore_icon.svg", 1, ExploreScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.svg", 2, CartScreen()),
  NavigatorItem("Account","assets/icons/account_icon.svg" , 3, const AccountScreen()),
  NavigatorItem("More", "assets/icons/moreicon.svg" , 4,  const MorePage()),
];
