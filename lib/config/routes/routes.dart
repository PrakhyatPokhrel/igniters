import 'package:flutter/material.dart';
import 'package:igniters/constants/route_constants.dart';
import 'package:igniters/screens/home/homescreen.dart';
import 'package:igniters/screens/login/loginscreen.dart';
import 'package:igniters/screens/mood/mood_screen.dart';
import 'package:igniters/screens/register/register_screen.dart';
import 'package:igniters/screens/scaffold/scaffold_frame.dart';
import 'package:igniters/screens/todo/todo.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case loginRoute:
        return _getPageRoute(const LoginScreen());
      case registerRoute:
        return _getPageRoute(const RegisterScreen());
      case homeRoute:
        return _getPageRoute(const HomeScreen());
      case moodRoute:
        return _getPageRoute(const MoodScreen());
      case todoRoute:
        return _getPageRoute(const ToDoScreen());
      case scaffoldRoute:
        return _getPageRoute(const ScaffoldFrame());
    }
    return null;
  }
}

PageRoute _getPageRoute(Widget pagetoshow) {
  return MaterialPageRoute(builder: (_) => pagetoshow);
}
