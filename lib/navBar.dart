// CustomBottomNavBar.dart
import 'package:flutter/material.dart';
// import 'package:g_nav/g_nav.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTabTapped;

  CustomBottomNavBar({
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(65, 0, 0, 0),
            offset: Offset(0, 10),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: GNav(
          tabs: [
            GButton(
              icon: Icons.circle_outlined,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              text: "Home",
              onPressed: () {
                onTabTapped(0);
              },
            ),
            GButton(
              icon: Icons.crop_square_outlined,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              text: "Message",
              onPressed: () {
                onTabTapped(1);
              },
            ),
            GButton(
              icon: Icons.blur_on_rounded,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              text: "Activity",
              onPressed: () {
                onTabTapped(2);
              },
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              text: "Notifications",
              onPressed: () {
                onTabTapped(3);
              },
            ),
            GButton(
              icon: Icons.change_history_outlined,
              iconColor: const Color.fromARGB(255, 0, 0, 0),
              text: "More",
              onPressed: () {
                onTabTapped(4);
              },
            ),
          ],
          // currentIndex: currentIndex,
          padding: EdgeInsets.all(15),
          gap: 5,
          color: Colors.black38,
          tabShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 0),
              spreadRadius: -5,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            )
          ],
          activeColor: Colors.white,
          tabBackgroundColor: Colors.black,
          tabMargin: EdgeInsets.all(0),
        ),
      ),
    );
  }
}
