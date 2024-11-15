import 'package:carbonccap/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/screens/gpa_management.dart';
import 'package:carbonccap/screens/gpi_management.dart';
import 'package:carbonccap/screens/reports.dart';
import 'package:carbonccap/screens/wallet.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    DashBoardScreen(),
    GpaManagement(),
    GpiManagement(),
    Reports(),
    DashboardScreenGpi(),
  ];

  void itemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screens[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: itemTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff52bf92),
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home. icon.svg",
            color: selectedIndex == 0 ? Color(0xff52bf92) : Colors.grey,
            width: 20,
            height: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/gpa.svg",
            color: selectedIndex == 1 ? Color(0xff52bf92) : Colors.grey,
            width: 20,
            height: 20,
          ),
          label: 'GPA',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/gpa.svg",
            color: selectedIndex == 2 ? Color(0xff52bf92) : Colors.grey,
            width: 20,
            height: 20,
          ),
          label: 'GPI',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/reports.svg",
            color: selectedIndex == 3 ? Color(0xff52bf92) : Colors.grey,
            width: 20,
            height: 20,
          ),
          label: 'Reports',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/wallet 1.svg",
            color: selectedIndex == 4 ? Color(0xff52bf92) : Colors.grey,
            width: 20,
            height: 20,
          ),
          label: 'Wallet',
        ),
      ],
    );
  }
}
