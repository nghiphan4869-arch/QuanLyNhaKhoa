import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: "Lịch hẹn",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.medical_services),
          label: "Điều trị",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Trang chủ",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none),
          label: "Nhắc lịch",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Cá nhân",
        ),
      ],
    );
  }
}