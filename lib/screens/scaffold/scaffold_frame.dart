import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/home/homescreen.dart';
import 'package:igniters/screens/jornal/jornal.dart';
import 'package:igniters/screens/mood/mood_screen.dart';
import 'package:igniters/screens/todo/todo.dart';
import 'package:ionicons/ionicons.dart';

class ScaffoldFrame extends StatefulWidget {
  const ScaffoldFrame({super.key});

  @override
  State<ScaffoldFrame> createState() => _ScaffoldFrameState();
}

class _ScaffoldFrameState extends State<ScaffoldFrame> {
  var currentIndex = 0;
  final screens = const [HomeScreen(), ToDoScreen(), Jornal()];

  void _tapDetector(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      body: SafeArea(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 70,
          child: BottomNavigationBar(
            elevation: 0,
            onTap: _tapDetector,
            iconSize: 30,
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: MyColors.primary,
            unselectedItemColor: MyColors.black,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Ionicons.home_outline),
              ),
              BottomNavigationBarItem(
                label: 'Task',
                icon: Icon(Ionicons.list_outline),
              ),
              BottomNavigationBarItem(
                label: 'Journal',
                icon: Icon(Ionicons.book_outline),
              ),
              BottomNavigationBarItem(
                label: 'Chat',
                icon: Icon(Ionicons.chatbox_outline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
