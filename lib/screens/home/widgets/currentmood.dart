import 'package:flutter/material.dart';
import 'package:igniters/constants/MyColors.dart';
import 'package:igniters/screens/mood/widget/custom.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getCurrentMood() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(10, 97, 97, 97),
            offset: Offset(1.0, 1.0),
            blurRadius: 5.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When you have a dream, you've got to grab it and never let go.",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffd2ae58),
                    ),
                  ),
                  addVertical(5),
                  Text(
                    "- Narayan Neupane",
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(195, 85, 85, 85),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(5),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Color(0xffffeab9),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Image.asset("assets/gif/smile.gif"),
            )
          ],
        ),
      ),
    ),
  );
}
