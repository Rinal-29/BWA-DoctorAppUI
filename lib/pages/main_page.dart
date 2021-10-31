import 'package:bwadoctor/pages/home_page.dart';
import 'package:bwadoctor/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget bottomNavBar() {
    return Visibility(
      visible: currentIndex == 3 ? false : true,
      child: Container(
        color: bgcolor4,
        padding: EdgeInsets.only(left: 40, right: 40, bottom: 10, top: 10),
        child: BottomNavigationBar(
          backgroundColor: bgcolor4,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          elevation: 0,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/home.png',
                  width: 24,
                  color: currentIndex == 0 ? primaryColor : secondaryColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/notification.png',
                  width: 24,
                  color: currentIndex == 1 ? primaryColor : secondaryColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/fav.png',
                  width: 24,
                  color: currentIndex == 2 ? primaryColor : secondaryColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Image.asset(
                  'assets/profile.png',
                  width: 24,
                  color: currentIndex == 3 ? primaryColor : secondaryColor,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return HomePage();
      case 2:
        return HomePage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
