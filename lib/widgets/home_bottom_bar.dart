import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _currentIndex = 2; // Set the initial index to 2 (Home icon)

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Adjust the height to fit your layout
      child: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: _currentIndex,
        items: [
          Icon(Icons.person_2_outlined, size: 30), // index 0
          Icon(Icons.favorite_outline, size: 30), // index 1
          Icon(
            Icons.home,
            size: 30,
            color: Colors.redAccent,
          ), // index 2
          Icon(Icons.location_on_outlined, size: 30), // index 3
          Icon(Icons.list, size: 30), // index 4
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              // Navigate to PhoneFieldScreen when the person icon is tapped (index 0)
              Navigator.pushNamed(context, '/phoneField');
            }
            // Add more conditions for other icons if needed
          });
        },
      ),
    );
  }
}
