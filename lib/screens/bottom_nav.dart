import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/discover.dart';
import 'package:warehouse_gym/screens/home.dart';
import 'package:warehouse_gym/screens/settings.dart';
import 'package:warehouse_gym/utils/config.dart';

import 'cart.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int value = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageDecider(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        //selectedLabelStyle: const TextStyle(color: myYellow),
        backgroundColor: myYellow,
        currentIndex: value,
        onTap: (index) {
          setState(() {
            value = index;
            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          });
        },
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined ), label: "Trainer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined ), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Setting"),
        ],
      ),
    );
  }

  pageDecider() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          value = index;
        });
      },
      children: const [HomePage(), Discover(), Cart(), Settings()],
    );
  }
}
