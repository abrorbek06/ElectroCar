import 'package:flutter/material.dart';
import 'package:loyiha/screend/body/get_location.dart';
import 'package:loyiha/screend/body/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [Home(), GetLocation()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A132B),
      body: screens[currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color(0xFF1A132B),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: currentIndex,
          selectedFontSize: 12,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 0
                    ? "assets/images/Home2.png"
                    : "assets/images/Home1.png",
                width: 40,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 1
                    ? "assets/images/Map2.png"
                    : "assets/images/Map1.png",
                width: 40,
              ),
              label: "Home",
            ),
          ],
        ),
      ),
    );
  }
}
