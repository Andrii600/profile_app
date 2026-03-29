import 'package:flutter/material.dart';

class AchivementsScreen extends StatefulWidget {
  final bool isDark;
  const AchivementsScreen({super.key, required this.isDark});

  @override
  State<AchivementsScreen> createState() => _AchivementsScreenState();
}

class _AchivementsScreenState extends State<AchivementsScreen> {
  //List of achievements with their completion state
  final List<Map<String, dynamic>> achievemnts = [
    {'title': 'Send 10 messages', 'isDone': false},
    {'title': 'Follow 4 people', 'isDone': false},
    {'title': 'Get followed by 3 people', 'isDone': false},
    {'title': 'Send 100 messages', 'isDone': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDark
          ? Color.fromARGB(255, 112, 17, 134)
          : Color.fromARGB(255, 238, 170, 255),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: achievemnts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //Toggle achievemnt state (done / not done)
                setState(() {
                  achievemnts[index]['isDone'] = !achievemnts[index]['isDone'];
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(achievemnts[index]['title'].toString()),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      achievemnts[index]['isDone']
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked,
                      color: achievemnts[index]['isDone']
                          ? Colors.green
                          : Colors.grey,
                    ),
                    Text(
                      achievemnts[index]['title'],
                      style: TextStyle(
                        decoration: achievemnts[index]['isDone']
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
