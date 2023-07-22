import 'package:flutter/material.dart';
import 'package:superapps/pages/home_page.dart';
import 'package:superapps/pages/profile_page.dart';
import 'package:superapps/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        currentIndex: currentIndex,
        // onTap: () {

        // },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/icon-mail.png',
                  width: 21,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/icon-pass.png',
                  width: 21,
                ),
              ),
              label: ''),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
