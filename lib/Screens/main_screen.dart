import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'Achivements_Screen.dart';
import 'Settings_Screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDark = false;
  int _selectedIndex = 0;

  final List<String> titles = ['Home', 'Achivements', 'Settings'];
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(isDark: isDark),
      AchivementsScreen(isDark: isDark),
      SettingsScreen(
        isDark: isDark,
        onToggle: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 184, 11),
      appBar: AppBar(
        shape: Border.all(),
        title: Text(titles[_selectedIndex], style: TextStyle(fontSize: 30, color: Colors.black)),
        centerTitle: true,
        backgroundColor: isDark
            ? Color.fromARGB(255, 104, 18, 165)
            : Color.fromARGB(255, 147, 11, 245),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        backgroundColor: isDark
            ? Color.fromARGB(255, 112, 17, 134)
            : Color.fromARGB(255, 238, 170, 255),
        selectedItemColor: Colors.purpleAccent,
        selectedFontSize: 20,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Achivements'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
