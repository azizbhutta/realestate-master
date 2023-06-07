import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'package:realestate/screens/pages/notification_screen.dart';
import 'package:realestate/screens/pages/search_screen.dart';
import 'package:realestate/screens/pages/settings_screen.dart';
import 'home_screen.dart';
import 'members_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    MembersScreen(),
    SearchScreen(),
    NotificationScreen(),
    SettingScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      // TODO BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: GNav(
            gap: 8.0,
            backgroundColor: whiteColor,
            color: Colors.grey,
            activeColor: primaryColor,
            tabBackgroundColor: Colors.grey.shade300,
            padding: const EdgeInsets.all(10.0),
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.person_add_sharp,
                text: "Members",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.notifications_none_sharp,
                text: "Notifications",
              ),
              GButton(icon: Icons.settings, text: "Settings",)
            ],
          ),
        ),
      ),
    );
  }
}
