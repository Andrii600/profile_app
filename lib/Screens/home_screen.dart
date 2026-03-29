import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isDark;
  const HomeScreen({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark
          ? Color.fromARGB(255, 112, 17, 134)
          : Color.fromARGB(255, 238, 170, 255),

      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: CircleAvatar(radius: 70, backgroundColor: Colors.green),
          ),

          SizedBox(height: 20),
          Text(
            'name: Jake', 
            style: TextStyle(
              fontSize: 45,
              color: const Color.fromARGB(235, 0, 0, 0),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'age: 34',
            style: TextStyle(
              fontSize: 45,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text("follow")),
        ],
      ),
    );
  }
}
