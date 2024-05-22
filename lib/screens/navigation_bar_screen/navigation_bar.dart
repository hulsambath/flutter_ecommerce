import 'package:ecommerce/screens/navigation_bar_screen/widgets/bottom_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import '../../configs/app_color/app_color.dart';
import '../cart_screen/cart_screen.dart';
import '../home_screen/home.dart';
import '../order_screen/order_screen.dart';
import '../profile_screen/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    OrderScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigator(
            onTabChange: (currentPage) {
              setState(() {
                _selectedIndex = currentPage;
              });
            },
            tabs: const [
              TabButton(
                color: AppColor.white,
                activeColor: AppColor.light,
                icon: FluentIcons.home_32_regular,
                text: 'Home',
              ),
              TabButton(
                color: AppColor.white,
                activeColor: AppColor.light,
                icon: FluentIcons.tag_32_regular,
                text: 'Discount',
              ),
              TabButton(
                color: AppColor.white,
                activeColor: AppColor.light,
                icon: FluentIcons.call_32_regular,
                text: 'Contact',
              ),
              TabButton(
                color: AppColor.white,
                activeColor: AppColor.black,
                icon: FluentIcons.person_32_regular,
                text: 'About Us',
              )
            ]));
  }
}
