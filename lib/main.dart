import 'package:flutter/material.dart';
import 'package:igniters/chat/chat.dart';
import 'package:igniters/config/routes/routes.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/home/homescreen.dart';
import 'package:igniters/screens/login/loginscreen.dart';
import 'package:igniters/screens/scaffold/scaffold_frame.dart';
import 'package:igniters/screens/todo/add_todo.dart';
import 'package:igniters/screens/todo/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: Routes.generateRoute,
        home: LoginScreen());
  }
}
