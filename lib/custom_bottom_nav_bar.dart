// custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: Colors.grey[300], // Light grey background
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black38,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_camera_back),
          label: '',
        ),
      ],
    );
  }
}
