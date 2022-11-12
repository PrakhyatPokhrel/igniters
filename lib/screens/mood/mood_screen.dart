import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          addVertical(150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Good Morning, ',
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffabc270),
                ),
              ),
              Text(
                'Narayan!',
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
          addVertical(10),
          Center(
            child: Text(
              'How are you feeling?',
              style: GoogleFonts.roboto(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          addVertical(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoodBox("Happy", 0xffffeab9, 0xffd2ae58, 'assets/gif/smile.gif',
                    context),
                MoodBox("Sad", 0xffe9eaff, 0xff6062ad, 'assets/gif/sad.gif',
                    context),
                MoodBox("Stressed", 0xfffde5df, 0xffca8677,
                    'assets/gif/stressed.gif', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoodBox("Fear", 0xffccfbf6, 0xff5b9c97, 'assets/gif/fear.gif',
                    context),
                MoodBox("Angry", 0xfffee8f2, 0xffa76788, 'assets/gif/angry.gif',
                    context),
                MoodBox("Depressed", 0xfffceccf, 0xffcf987b,
                    'assets/gif/depressed.gif', context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
