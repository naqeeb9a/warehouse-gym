import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/activity.dart';
import 'package:warehouse_gym/screens/discover.dart';
import 'package:warehouse_gym/screens/home.dart';
import 'package:warehouse_gym/screens/settings.dart';

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
        currentIndex: value,
        onTap: (index) {
          setState(() {
            value = index;
            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut);
          });
        },
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: "Discovery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
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
      children: const [HomePage(), Discover(), Activity(), Settings()],
    );
  }
}
