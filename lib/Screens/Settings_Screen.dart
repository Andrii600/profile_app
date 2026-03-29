import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggle;

  const SettingsScreen({
    super.key,
    required this.isDark,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark
          ? Color.fromARGB(255, 112, 17, 134)
          : Color.fromARGB(255, 238, 170, 255),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: ListTile(
          title: Text("Dark mode", style: TextStyle(fontSize: 30, color: Colors.black), ),
          trailing: Switch(
            value: isDark,
            onChanged: (value) {
              onToggle();
            },
          ),
        ),
      ),
    );
  }
}
