import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // default ke Home (index 0)
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, -2),
          )
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,

        selectedItemColor: const Color(0xff7CA968),
        unselectedItemColor: Colors.grey.shade400,

        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 13,
        ),

        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),

        items: [
          BottomNavigationBarItem(
            // Home -> index 0
            icon: _navIcon(Icons.home_outlined, 0),
            activeIcon: _navIcon(Icons.home, 0, active: true),
            label: "Home",
          ),
          BottomNavigationBarItem(
            // Favorite -> index 1
            icon: _navIcon(Icons.favorite_border, 1),
            activeIcon: _navIcon(Icons.favorite, 1, active: true),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            // Aktivitas -> index 2
            icon: _navIcon(Icons.list_alt_outlined, 2),
            activeIcon: _navIcon(Icons.list_alt, 2, active: true),
            label: "Aktivitas",
          ),
          BottomNavigationBarItem(
            // Chat -> index 3
            icon: _navIcon(Icons.chat_bubble_outline, 3),
            activeIcon: _navIcon(Icons.chat_bubble, 3, active: true),
            label: "Chat",
          ),
        ],
      ),
    );
  }

  // ============================
  // CUSTOM ICON MODERN + ANIMASI
  // ============================
  Widget _navIcon(IconData icon, int index, {bool active = false}) {
    bool isActive = currentIndex == index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 260),
      padding: EdgeInsets.symmetric(
        horizontal: isActive ? 10 : 0,
        vertical: isActive ? 4 : 0,
      ),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffE1EECE) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 26,
        color: isActive ? const Color(0xff7CA968) : Colors.grey.shade400,
      ),
    );
  }
}
