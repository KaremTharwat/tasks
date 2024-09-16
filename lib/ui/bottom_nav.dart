import 'package:flutter/material.dart';
import 'package:tasks/ui/home.dart';
import 'package:tasks/ui/profile.dart';
import 'package:tasks/ui/setting.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [const ListViewWidget(), const Profile(), const Settings()];
  int currentState = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentState],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "j"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "h"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "t"),
        ],
        currentIndex: currentState,
        onTap: (value) {
          currentState = value;
          setState(() {});
        },
      ),
    );
  }
}
