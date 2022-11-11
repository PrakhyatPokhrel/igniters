import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igniters/constants/MyColors.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          const SizedBox(
            height: 97,
          ),
          Center(
            child: Text(
              'Good Morning, Narayan!',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: MyColors.black),
            ),
          ),
          Center(
            child: Text(
              'How are you feeling?',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: MyColors.black),
            ),
          )
        ],
      ),
    );
  }
}
